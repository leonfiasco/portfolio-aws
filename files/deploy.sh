#!/usr/bin/env bash
# Usage: ./deploy.sh [build_dir]
# Run from this folder. Builds your app and ships it to S3 + CloudFront.
# Build dir: "build" for Create React App, "dist" for Vite.
set -euo pipefail

APP_DIR="${APP_DIR:-..}"          # path to your React project
BUILD_DIR="${1:-build}"

BUCKET=$(terraform output -raw bucket_name)
DIST_ID=$(terraform output -raw distribution_id)

( cd "$APP_DIR" && npm ci && npm run build )

# Long cache for hashed assets, no cache for index.html
aws s3 sync "$APP_DIR/$BUILD_DIR" "s3://$BUCKET" --delete \
  --exclude "index.html" \
  --cache-control "public,max-age=31536000,immutable"

aws s3 cp "$APP_DIR/$BUILD_DIR/index.html" "s3://$BUCKET/index.html" \
  --cache-control "no-cache"

aws cloudfront create-invalidation --distribution-id "$DIST_ID" --paths "/index.html" >/dev/null
echo "Deployed."
