class SchedulerHitsController < ApplicationController
  before_action :set_scheduler_hit, only: [:show, :edit, :update, :destroy]

  # GET /scheduler_hits
  # GET /scheduler_hits.json
  def index
    @scheduler_hits = SchedulerHit.all
  end

  # GET /scheduler_hits/1
  # GET /scheduler_hits/1.json
  def show
  end

  # GET /scheduler_hits/new
  def new
    @scheduler_hit = SchedulerHit.new
  end

  # GET /scheduler_hits/1/edit
  def edit
  end

  # POST /scheduler_hits
  # POST /scheduler_hits.json
  def create
    @scheduler_hit = SchedulerHit.new(scheduler_hit_params)

    respond_to do |format|
      if @scheduler_hit.save
        format.html { redirect_to @scheduler_hit, notice: 'Scheduler hit was successfully created.' }
        format.json { render :show, status: :created, location: @scheduler_hit }
      else
        format.html { render :new }
        format.json { render json: @scheduler_hit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scheduler_hits/1
  # PATCH/PUT /scheduler_hits/1.json
  def update
    respond_to do |format|
      if @scheduler_hit.update(scheduler_hit_params)
        format.html { redirect_to @scheduler_hit, notice: 'Scheduler hit was successfully updated.' }
        format.json { render :show, status: :ok, location: @scheduler_hit }
      else
        format.html { render :edit }
        format.json { render json: @scheduler_hit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduler_hits/1
  # DELETE /scheduler_hits/1.json
  def destroy
    @scheduler_hit.destroy
    respond_to do |format|
      format.html { redirect_to scheduler_hits_url, notice: 'Scheduler hit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduler_hit
      @scheduler_hit = SchedulerHit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scheduler_hit_params
      params.require(:scheduler_hit).permit(:task, :interval)
    end
end
