# frozen_string_literal: true

class Aws::StarshieldS3Bucket
  include Singleton

  def upload_file(str_file)
    client.put_object(
      bucket: bucket,
      key: "files/#{str_file.original_filename}",
      content_disposition: 'attachment',
      body: str_file
    )
  end

  def download_link(name)
    signer.presigned_url(
      :get_object,
      bucket: bucket,
      key: "files/#{name}"
    )
  end

  def delete_file(name)
    client.delete_object(
      bucket: bucket,
      key: "files/#{name}"
    )
  end

  def client
    @client ||= Aws::S3::Client.new
  end

  def signer
    @signer ||= Aws::S3::Presigner.new(client: client)
  end

  def bucket
    @bucket ||= 'starshield-bucket'
  end
end
