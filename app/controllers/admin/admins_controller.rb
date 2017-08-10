class Admin::AdminsController < ApplicationController

  def show
    render template: 'admins/show'
  end

end
