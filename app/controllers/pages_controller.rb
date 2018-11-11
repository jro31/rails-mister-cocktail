class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :splash

  def splash
    @hide = true
  end
end
