class RestsController < ApplicationController  
  require 'rubygems'
  require 'json'
  require 'rest-client'

  def get
    response = RestClient.get '10.0.0.2/e.php'
    response = JSON.parse(response)

    File.open('posts.json', 'w') do |f|
      f.write(response.to_json)
    end

    puts response   
  end

end
