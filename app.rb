require "bundler/setup"
require "sinatra"
require "sinatra/reloader"
first_names = []
get '/' do
  @first_names = first_names
  erb :index
end

post '/some_path' do
  first_names << params[:first_name]
  redirect "/"
end
