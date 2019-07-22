class CoinsController < ApplicationController
    # before_action :set_coin, only: [:show, :edit, :update, :destroy]
    def index
        @coins = Coin.all
    end
    def show
        @coin = Coin.find(params[:id])
    end
    def new
        @coin = Coin.new
    end
    def create
        Coin.create(params.require(:coin).permit(:name, :mintage, :price, :detail))
        redirect_to coins_path
    end
    def edit
        @coin = Coin.find(params[:id])
    end
end
