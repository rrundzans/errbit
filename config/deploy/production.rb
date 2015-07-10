# set :stage, :production
# set :branch, "master"

# # This is used in the Nginx VirtualHost to specify which domains
# # the app should appear on. If you don't yet have DNS setup, you'll
# # need to create entries in your local Hosts file for testing.
# set :server_name, "errbit.uuid.be"

role :app, %w(www-errbit@errbit.uuid.be)
role :web, %w(www-errbit@errbit.uuid.be)
role :db,  %w(www-errbit@errbit.uuid.be)


# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

server 'errbit.uuid.be', user: 'www-errbit', roles: %w(web app)#, my_property: :my_value
