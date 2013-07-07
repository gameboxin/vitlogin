require 'typhoeus'
class HomeController < ApplicationController
  def index

  end
  def login
    request = Typhoeus::Request.new("https://academics.vit.ac.in/parent/captcha.asp")
    request.on_complete do |response|
      puts response.body
      @img=response.body
      puts response.headers
    end
    request.run
  end
end