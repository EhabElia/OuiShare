begin
  CarrierWave.configure do |config|
    if Rails.env.production?
      config.fog_credentials = {
        :provider               => 'AWS',       # required
        :aws_access_key_id      => ENV['aws.key'],       # required
        :aws_secret_access_key  => ENV['aws.secret'],       # required
        :region                 => 'eu-west-1',  # optional, defaults to 'us-east-1'
      }
      config.fog_directory  = 'ouishare'
    else
      config.storage = :file
      if rails.env.test?
        config.enable_processing = false
      end
    end
  end
rescue Exception => e
  Rails.logger.warn "Error loading settings: #{e}"
end
