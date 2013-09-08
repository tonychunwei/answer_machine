class SentencesController < ApplicationController
  def hello
    @Response = {:Say => "hello tony!"}
    render :xml =>  @Response.to_xml(:root => 'Response')
  end
end
