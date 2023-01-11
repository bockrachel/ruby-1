require 'sinatra'
require './hello'

get '/' do
  hello = Hello.new('Nathan')
  hello.say_hello.to_s
end

get '/:name' do
  Hello2.new(params['name']).say_hello
end
