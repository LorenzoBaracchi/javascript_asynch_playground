class CallbackController < ApplicationController

  protect_from_forgery
  skip_before_action :verify_authenticity_token

  def index
  end

  def calling
    sleep 3 unless Rails.env.test?
    render js: 'endOfExec();'
  end

  def compute
    respond_to do |format|
      format.html
      format.js {
        result = Computator.new().solve(params[:q])
        render js: result.to_s
      }
    end
  end

end
