    CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws'  #=> 追加
      config.fog_credentials = {
        # Amazon S3用の設定
        provider: 'AWS',
        aws_access_key_id: 'ap-northeast-1'
        aws_access_key_id: 'AKIA54NMMBXYUJPIEM67',
        aws_secret_access_key: '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',
        region: 'ap-northeast-1'
      }
      config.fog_directory     =  ENV['ramen-app-image']
      # キャッシュの保存期間
      config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
    config.fog_directory  = 'ramen-app-image'
    config.asset_host = "https://s3.ap-northeast-1.amazonaws.com/バケット名"
    config.cache_storage = :fog
  end