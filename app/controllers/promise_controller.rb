class PromiseController < ApplicationController

  def index
  end

  def why
  end

  def why2
  end

  def script
    render js: 'alert("remote alert!")'
  end

end
