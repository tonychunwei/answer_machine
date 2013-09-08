class SentencesController < ApplicationController
  def hello
    @Response = {:Say => "hello tony!"}
    render :xml =>  @Response.to_xml(:root => 'Response')
  end
  
  def callback
    @Response = {:Say => "hello tony!"}
    render :xml =>  @Response.to_xml(:root => 'Response')
  end
  
  def call
    require 'rubygems'
    require 'twilio-ruby'

    @account_sid = 'AC95988675da3aae714a593e96e258e3eb'
    @auth_token = '14eac5c5c5329f2bf44c375f2cdeb5b9'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new(@account_sid, @auth_token)

    @account = @client.account
    @call = @account.calls.create({:from => '+16505427153', :to => '6508620477', :url => 'http://answer-machine-v1.herokuapp.com/sentences/callback'})
    puts @call
  end
end
