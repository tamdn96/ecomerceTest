class NetTimeoutController < ApplicationController
  def index
    sleep 1000
  end
end
