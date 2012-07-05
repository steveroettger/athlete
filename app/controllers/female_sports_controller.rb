class FemaleSportsController < ApplicationController
  before_filter :authenticate_admin_user!
  
  # GET /female_sports
  # GET /female_sports.json
  def index
    @female_sports = FemaleSport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @female_sports }
    end
  end

  # GET /female_sports/1
  # GET /female_sports/1.json
  def show
    @female_sport = FemaleSport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @female_sport }
    end
  end

  # GET /female_sports/new
  # GET /female_sports/new.json
  def new
    @female_sport = FemaleSport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @female_sport }
    end
  end

  # GET /female_sports/1/edit
  def edit
    @female_sport = FemaleSport.find(params[:id])
  end

  # POST /female_sports
  # POST /female_sports.json
  def create
    @female_sport = FemaleSport.new(params[:female_sport])

    respond_to do |format|
      if @female_sport.save
        format.html { redirect_to @female_sport, notice: @female_sport.title + ' was successfully created.' }
        format.json { render json: @female_sport, status: :created, location: @female_sport }
      else
        format.html { render action: "new" }
        format.json { render json: @female_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /female_sports/1
  # PUT /female_sports/1.json
  def update
    @female_sport = FemaleSport.find(params[:id])

    respond_to do |format|
      if @female_sport.update_attributes(params[:female_sport])
        format.html { redirect_to @female_sport, notice: @female_sport.title + ' was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @female_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /female_sports/1
  # DELETE /female_sports/1.json
  def destroy
    @female_sport = FemaleSport.find(params[:id])
    @female_sport.destroy

    respond_to do |format|
      format.html { redirect_to female_sports_url }
      format.json { head :no_content }
    end
  end
end
