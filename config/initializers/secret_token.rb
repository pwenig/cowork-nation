# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
App::Application.config.secret_key_base = Rails.env.production? ? ENV['SESSION_SECRET'] : 'f96c4bd3bb622379164adbf5638b05612f8c9728d05527298d0dfcc3b08cbc2286e187250c9f3313f098177ff7023ce59d60a773331bc6a392ac48cc807fece1'
