class PagesController < ApplicationController
  before_action :authenticate_user!, only: [ :posts ]

  def home
  end
  def about; end

  def portfolio; end
end
