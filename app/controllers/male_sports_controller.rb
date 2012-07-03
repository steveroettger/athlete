class MaleSportsController < ApplicationController
  # GET /male_sports
  # GET /male_sports.json
  def index
    @male_sports = MaleSport.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @male_sports }
    end
  end

  # GET /male_sports/1
  # GET /male_sports/1.json
  def show
    @male_sport = MaleSport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @male_sport }
    end
  end

  # GET /male_sports/new
  # GET /male_sports/new.json
  def new
    @male_sport = MaleSport.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @male_sport }
    end
  end

  # GET /male_sports/1/edit
  def edit
    @male_sport = MaleSport.find(params[:id])
  end

  # POST /male_sports
  # POST /male_sports.json
  def create
    @male_sport = MaleSport.new(params[:male_sport])

    respond_to do |format|
      if @male_sport.save
        format.html { redirect_to @male_sport, notice: @male_sport.title + ' was successfully created.' }
        format.json { render json: @male_sport, status: :created, location: @male_sport }
      else
        format.html { render action: "new" }
        format.json { render json: @male_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /male_sports/1
  # PUT /male_sports/1.json
  def update
    @male_sport = MaleSport.find(params[:id])

    respond_to do |format|
      if @male_sport.update_attributes(params[:male_sport])
        format.html { redirect_to @male_sport, notice: @male_sport.title + ' was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @male_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /male_sports/1
  # DELETE /male_sports/1.json
  def destroy
    @male_sport = MaleSport.find(params[:id])
    @male_sport.destroy

    respond_to do |format|
      format.html { redirect_to male_sports_url }
      format.json { head :no_content }
    end
  end
end
