class CouponsDatasController < ApplicationController
  # GET /coupons_data
  # GET /coupons_data.json
  def index
    @coupons_data = current_user.account.coupons_data.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coupons_data }
    end
  end

  # GET /coupons_data/1
  # GET /coupons_data/1.json
  def show
    @coupons_data = current_user.account.coupons_data.all
    @coupons_datum = current_user.account.coupons_data.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coupons_datum }
    end
  end

  # GET /coupons_data/new
  # GET /coupons_data/new.json
  def new
    @coupons_datum = current_user.account.coupons_data.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coupons_datum }
    end
  end

  # GET /coupons_data/1/edit
  def edit
    @coupons_datum = current_user.account.coupons_data.find(params[:id])
  end

  # POST /coupons_data
  # POST /coupons_data.json
  def create
    @coupons_datum = current_user.account.coupons_data.new(params[:coupons_datum])

    respond_to do |format|
      if @coupons_datum.save
        format.html { redirect_to user_account_coupons_datas_path(current_user), notice: 'Coupons datum was successfully created.' }
        format.json { render json: @coupons_datum, status: :created, location: @coupons_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @coupons_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coupons_data/1
  # PUT /coupons_data/1.json
  def update
    @coupons_datum = current_user.account.coupons_data.find(params[:id])

    respond_to do |format|
      if @coupons_datum.update_attributes(params[:coupons_datum])
        format.html { redirect_to @coupons_datum, notice: 'Coupons datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coupons_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coupons_data/1
  # DELETE /coupons_data/1.json
  def destroy
    @coupons_datum = current_user.account.coupons_data.find(params[:id])
    @coupons_datum.destroy

    respond_to do |format|
      format.html { redirect_to coupons_data_url }
      format.json { head :no_content }
    end
  end
end
