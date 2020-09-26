if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws'  #=> 追加
      config.fog_credentials = {
        # Amazon S3用の設定
        :provider              => 'AWS',
        :region                => ENV['ap-northeast-1'],
        :aws_access_key_id     => ENV['AKIA54NMMBXY7M25GSXI'],
        :aws_secret_access_key => ENV['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']
      }
      config.fog_directory     =  ENV['ramen-app-image']
      # キャッシュの保存期間
      config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
    end
    # 日本語ファイル名の設定
    CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/ 
  end