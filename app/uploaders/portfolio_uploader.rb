# class PortfolioUploader < CarrierWave::Uploader::Base
#   storage :file
#   # storage :fog

#   # Override the directory where uploaded files will be stored.
#   # This is a sensible default for uploaders that are meant to be mounted:
#   def store_dir
#     "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
#   end

#   def extension_whitelist
#     %w(jpg jpeg gif png)
#   end


# end

class PortfolioUploader < CarrierWave::Uploader::Base
 
  include Cloudinary::CarrierWave
 
  process :convert => 'png'
  process :tags => ['thumb_image','main_image']
 
  version :standard do
    process :resize_to_fill => [100, 150, :north]
  end
 
  version :thumbnail do
    resize_to_fit(50, 50)
  end
end