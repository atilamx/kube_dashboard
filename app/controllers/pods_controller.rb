class PodsController < ApplicationController
  def index
    render json: {test: 'some'}
  end   
end
