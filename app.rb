require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}".reverse
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number ** 2
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
    answer = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    
    @number.times do
      answer += "#{@phrase}\n"
    end
    answer
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    answer = ""
  end

end