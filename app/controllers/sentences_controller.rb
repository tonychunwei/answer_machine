class SentencesController < ApplicationController
  def hello
    @Saying = {:Say => "hello tony!"}
    @Response = {:Response => @Saying}
    render :xml =>  @Response.to_xml(@Saying)
  end
end
