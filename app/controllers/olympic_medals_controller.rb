class OlympicMedalsController < ApplicationController
  before_action :set_olympic_medal, only: [:show, :edit, :update, :destroy]

  # GET /olympic_medals
  # GET /olympic_medals.json
  def index
    @olympic_medals = OlympicMedal.all
  end

  # GET /olympic_medals/1
  # GET /olympic_medals/1.json
  def show
  end

  # GET /olympic_medals/new
  def new
    @olympic_medal = OlympicMedal.new
  end

  # GET /olympic_medals/1/edit
  def edit
  end

  # POST /olympic_medals
  # POST /olympic_medals.json
  def create
    @olympic_medal = OlympicMedal.new(olympic_medal_params)

    respond_to do |format|
      if @olympic_medal.save
        format.html { redirect_to @olympic_medal, notice: 'Olympic medal was successfully created.' }
        format.json { render :show, status: :created, location: @olympic_medal }
      else
        format.html { render :new }
        format.json { render json: @olympic_medal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /olympic_medals/1
  # PATCH/PUT /olympic_medals/1.json
  def update
    respond_to do |format|
      if @olympic_medal.update(olympic_medal_params)
        format.html { redirect_to @olympic_medal, notice: 'Olympic medal was successfully updated.' }
        format.json { render :show, status: :ok, location: @olympic_medal }
      else
        format.html { render :edit }
        format.json { render json: @olympic_medal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /olympic_medals/1
  # DELETE /olympic_medals/1.json
  def destroy
    @olympic_medal.destroy
    respond_to do |format|
      format.html { redirect_to olympic_medals_url, notice: 'Olympic medal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_olympic_medal
      @olympic_medal = OlympicMedal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def olympic_medal_params
      params.require(:olympic_medal).permit(:athlete_name, :event, :country, :medal_type, :event_date)
    end
end
