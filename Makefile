build:
	rm -rf public
	hugo

deploy: build
	aws s3 sync public/ s3://yoolbinum.me --acl public-read --delete
	aws configure set preview.cloudfront true
	aws cloudfront create-invalidation --distribution-id E2JOC5LF5LDL5 --paths '/*'