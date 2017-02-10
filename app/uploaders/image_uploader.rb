# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  # to risize and convert file type
  include CarrierWave::RMagick

  # resize limit
  process :resize_to_fit => [200, 200]

  # we use jpg
  process :convert => 'jpg'

  # create thumbnail
  version :thumb do
    process :resize_to_fill => [100, 100, gravity = ::Magick::CenterGravity]
  end

  version :profile do
    process :resize_to_fill => [180, 180, gravity = ::Magick::CenterGravity]
end

  # we accept only jpg, jpeg, gif, png
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
  end

end
