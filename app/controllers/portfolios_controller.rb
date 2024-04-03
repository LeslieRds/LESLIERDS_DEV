class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[show]
  skip_before_action :authenticate_user!
  def index
    @portfolios = Portfolio.all.order(created_at: :desc)
  end

  def show; end

  private

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end
end
