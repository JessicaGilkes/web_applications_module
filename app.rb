require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base

# #example

# get '/hello' do
#   name = params[:name]

#   return "Hello #{name}"
# end

# #excerise

# get '/names' do
#     name = params[:name]
#     return "#{name}"
#   end

#CHALLENGE ph2ch4

# post '/sort_names' do
#     names = params[:names]
#     return names.split(',').sort.join(",")
# end

# CHALLENGE ph2ch5

    get '/artists' do
        artist = params[:artist]
        return artist
    end

    post '/artists' do
        name = params[:name]
        genre = params[:genre]
    end

    get '/artists' do
         artist = params[:artist]
         return artist
     end
    

  configure :development do
    register Sinatra::Reloader
  end
end

