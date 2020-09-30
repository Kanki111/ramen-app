config/carrier_wave.rb

if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_credentials = {
        # Amazon S3用の設定
        :provider              => 'AWS',
        :region                => ENV['ap-northeast-1'],   
        :aws_access_key_id     => ENV['AKIA54NMMBXYVN2SN2GO'],
        :aws_secret_access_key => ENV['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']
      }
      config.fog_directory     =  ENV['image-ramen-app-main']
    end
end