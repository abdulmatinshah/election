class DashboardsController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'
  def show
    @users = User.all
  end
end
