class FlowController < ApplicationController

  def series
  end

  def parallel
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

  def computedelay
    sleep(5)
    respond_to do |format|
      format.html
      format.js {
        result = Computator.new().solve(params[:q])
        render js: result.to_s
      }
    end
  end
end
