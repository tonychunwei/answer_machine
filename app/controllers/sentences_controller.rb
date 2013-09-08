class SentencesController < ApplicationController
  def hello
    render :xml => {:result => "OK"}.to_xml
  end
end
