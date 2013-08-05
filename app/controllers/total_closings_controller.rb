class TotalClosingsController < ApplicationController
  before_action :set_total_closing, only: [:show, :edit, :update, :destroy]

  # GET /total_closings
  # GET /total_closings.json
  def index
    @total_closings = TotalClosing.all
  end

  # GET /total_closings/1
  # GET /total_closings/1.json
  def show
  end

  # GET /total_closings/new
  def new
    @total_closing = TotalClosing.new
  end

  # GET /total_closings/1/edit
  def edit
  end

  # POST /total_closings
  # POST /total_closings.json
  def create
    @total_closing = TotalClosing.new(total_closing_params)

    respond_to do |format|
      if @total_closing.save
        format.html { redirect_to @total_closing, notice: 'Total closing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @total_closing }
      else
        format.html { render action: 'new' }
        format.json { render json: @total_closing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /total_closings/1
  # PATCH/PUT /total_closings/1.json
  def update
    respond_to do |format|
      if @total_closing.update(total_closing_params)
        format.html { redirect_to @total_closing, notice: 'Total closing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @total_closing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /total_closings/1
  # DELETE /total_closings/1.json
  def destroy
    @total_closing.destroy
    respond_to do |format|
      format.html { redirect_to total_closings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_total_closing
      @total_closing = TotalClosing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def total_closing_params
      params.require(:total_closing).permit(:Total_sale, :Total_pin, :Total_creditcard, :TMZ_Phone, :TMZ_Total, :Sunny_Phone, :Sunny_Total, :Raj, :Bill_paid, :Bill_Received, :Other_paid, :Other_amount, :Cash_In_Hand)
    end
end
