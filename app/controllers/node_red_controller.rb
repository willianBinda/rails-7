class NodeRedController < ApplicationController
  before_action :authenticate_user!
  # load_and_authorize_resource
  def authenticate
    puts "\n\nExecutou a função autenticate\n\n"
    head :ok
  end

  def index
  end
end
