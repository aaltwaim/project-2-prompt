class AuctionsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :edit]
    before_action :set_auction, only: [:show, :edit, :update, :destroy]

  # GET /auctions
  # GET /auctions.json
  def index
    @auctions = Auction.all
  end

  # GET /auctions/1
  # GET /auctions/1.json
  def show
  end

  # GET /auctions/new
  def new
    @auction = Auction.new
    @collectible = Collectible.find(params[:collectible_id])
    
  end

  # GET /auctions/1/edit
  def edit
  end

  # POST /auctions
  # POST /auctions.json
  def create
    @auction = current_user.auctions.new(auction_params)
    collectible = Collectible.find(@auction.collectible_id)
    if @auction.current_bidding > @auction.previous_bidding
        collectible.update_attribute(:current_bid, @auction.current_bidding )
        respond_to do |format|
            if @auction.save
              format.html { redirect_to @auction, notice: 'Auction was successfully created.' }
              format.json { render :show, status: :created, location: @auction }
            else
              format.html { render :new }
              format.json { render json: @auction.errors, status: :unprocessable_entity }
            end
          end
    else
        respond_to do |format|
        format.html { redirect_to @auction, notice: 'The bidding must be higher than current value' }


        end
    end
    
  end

  # PATCH/PUT /auctions/1
  # PATCH/PUT /auctions/1.json
  def update
    respond_to do |format|
      if @auction.update(auction_params)
        format.html { redirect_to @auction, notice: 'Auction was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction }
      else
        format.html { render :edit }
        format.json { render json: @auction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auctions/1
  # DELETE /auctions/1.json
  def destroy
    @auction.destroy
    respond_to do |format|
      format.html { redirect_to auctions_url, notice: 'Auction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction
      @auction = Auction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auction_params
      params.require(:auction).permit(:collectible_id, :number_of_bidding, :previous_bidding, :current_bidding)
    end
end
