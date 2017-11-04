class AdminsController < ApplicationController
  def index
    @admins = Admin.all
  end

  def show
    @admin = Admin.first
  end

end
