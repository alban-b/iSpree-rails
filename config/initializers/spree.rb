# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |_config|
  # s3 configuration
  if Rails.env.production?
    # production store images on s3
    # development will default to locac storage
    attachment_config = {
      s3_credentials: {
        access_key_id: AppConfig.s3_access_key_id,
        secret_access_key: AppConfig.s3_secret_access,
        bucket: AppConfig.s3_bucket,
      },

      storage: :s3,
      s3_headers: { "Cache-Control" => "max-age=31557600" },
      s3_protocol: "https",
      bucket: AppConfig.s3_bucket,

      path: ":rails_root/public/:class/:attachment/:id/:style/:basename.:extension",
      default_url:   "/:class/:attachment/:id/:style/:basename.:extension",
      default_style: "product",
    }

    attachment_config.each do |key, value|
      Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
    end
  end
end

Spree.user_class = "Spree::LegacyUser"

Spree::Api::Config[:requires_authentication] = false
