CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        
    aws_access_key_id:     'AKIAXXLXWLKYYREF6UER',                       
    aws_secret_access_key: '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',                        
    use_iam_profile:       false,                         
    region:                'eu-central-1',                  
    # host:                  's3.example.com',             # optional, defaults to nil
    # endpoint:              'http://onlybunnies.s3-website.eu-central-1.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'onlybunnies'                                      
  config.fog_public     = false                                                 
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } 
  # For an application which utilizes multiple servers but does not need caches persisted across requests,
  # uncomment the line :file instead of the default :storage.  Otherwise, it will use AWS as the temp cache store.
  # config.cache_storage = :file
end