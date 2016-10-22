CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => '2222', # THING 1
    :aws_secret_access_key  => '3333', # THING 2
    :region                 => 'us-east-1'
  }

  config.fog_directory  = 'wwww' # THING 3
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end
