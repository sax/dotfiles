username = `whoami`.chomp
keyfile = if File.exist?(File.expand_path("~/.ssh/#{username}.pem"))
  File.expand_path("~/.ssh/#{username}.pem")
elsif File.exist?(File.expand_path("~/.chef/#{username}.pem"))
  File.expand_path("~/.chef/#{username}.pem")
end

node_name     username
client_key    keyfile
