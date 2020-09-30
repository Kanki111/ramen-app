require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.storage = :fog
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: Rails.application.secrets.AKIA54NMMBXYVN2SN2GO,
    aws_secret_access_key: Rails.application.k7w7sCBBe8/3pag6NVgRoawEUyRca8X6PP8h7HdT,
    region: 'ap-northeast-1' 
  }

  config.fog_directory  = 'image-ramen-app-main'
  config.asset_host = 'https://s3-ap-northeast1.amazonaws.com/image-ramen-app-main'
end