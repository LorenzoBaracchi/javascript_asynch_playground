class CallbackController < ApplicationController

  protect_from_forgery
  skip_before_action :verify_authenticity_token

  def index
  end

  def calling
    sleep 3 unless Rails.env.test?
    render js: 'endOfExec();'
  end

end
