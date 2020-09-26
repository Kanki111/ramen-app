if Rails.env.production?
    CarrierWave.configure do |config|
      config.fog_provider = 'fog/aws'  #=> 追加
      config.fog_credentials = {
        # Amazon S3用の設定
        :provider              => 'AWS',
        :region                => ENV['ap-northeast-1'],
        :aws_access_key_id     => ENV['AKIA54NMMBXYUJPIEM67'],
        :aws_secret_access_key => ENV['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']
      }
      config.fog_directory     =  ENV['ramen-app-image']
      # キャッシュの保存期間
      config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
    end
    # 日本語ファイル名の設定
    CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/ 
  end