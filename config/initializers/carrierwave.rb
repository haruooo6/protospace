CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => Settings[:aws][:access_key_id],
    :aws_secret_access_key  => Settings[:aws][:secret_key],
    :region                 => 'ap-northeast-1'
  }

  config.fog_directory = Settings[:aws][:fog_directory]
  config.asset_host = Settings[:aws][:asset_host]

end
