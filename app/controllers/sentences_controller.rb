class SentencesController < ApplicationController
  def hello
    @Saying = {:Say => "hello tony!"}
    render :xml => {:Response => @Saying}
  end
end
