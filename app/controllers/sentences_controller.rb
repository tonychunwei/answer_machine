class SentencesController < ApplicationController
  def hello
    render :xml => {:result => "OK"}
  end
end
