unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIA54NMMBXYVN2SN2GO',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'image-ramen-app-main'
    config.cache_storage = :fog
  end
end