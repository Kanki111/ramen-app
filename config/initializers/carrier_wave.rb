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

  config.fog_directory = 'https://image-ramen-app-main.s3.amazonaws.com'
  config.asset_host = 'https://image-ramen-app-main.s3.amazonaws.com'
end