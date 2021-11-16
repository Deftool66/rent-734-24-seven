class PagesController < ApplicationController
    skip_before_action :authenticate_user!, only: :home
  def home
  end

  def random_user
    @user = User.order(Arel.sql('RANDOM()')).first
  end
end
