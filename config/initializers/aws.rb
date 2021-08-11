require 'aws-sdk-s3'

Aws.config.update(
  region: ENV['S3_REGION'],
  credentials: Aws::Credentials.new(
    ENV['S3_ACCESSKEYID'],
    ENV['S3_SECRETACCESSKEY']
  )
)
