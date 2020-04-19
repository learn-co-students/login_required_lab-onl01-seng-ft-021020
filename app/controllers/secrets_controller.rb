class SecretsController < ApplicationController
  before_action :logged_in?, only: [:show]

  def show
  end
end
