require "sinatra"
require "pry"
require "csv"


set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do

end


get '/articles/new' do
  @error_msg = ''
  erb :new
end

get '/articles' do
  @articles = []
  CSV.foreach('articles.csv') do |row|
    @articles << row
  end
  erb :index
end

post '/articles/new' do
  @title = params['title']
  @url = params['url']
  @description = params['description']
  input_array = [@title, @url, @description]
  if input_array.include?('')
    @error_msg = 'Error'
    erb :new
  else
    CSV.open('articles.csv', 'a') do |csv|
      csv << input_array
    end
    redirect '/articles/new'
  end
end
