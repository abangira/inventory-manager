# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_store+_session',
  :secret      => '0e8a53fa0bb3de18227c891bf4780fb0bf3afc76a1b73230cc03dfdc8232cc7e0cc9afe7ec48dbc12fa6e1084e0b81286e25638b08a99a049d7c83b64eb73dec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
