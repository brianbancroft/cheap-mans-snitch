class SchedulerHitsController < ApplicationController
  http_basic_authenticate_with name: 'brian@careerjsm.com',
                               password: '1Berekley'

  # GET /
  def index
    @scheduler_hits = SchedulerHit.all
  end

  # POST /new-hit
  def new_scheduler_action
    @scheduler_hit = SchedulerHit.create(scheduler_hit_params)
    render status: 200, json: @controller.to_json
  end

  def destroy
    @scheduler_hit.destroy
    redirect_to scheduler_hits_url, notice: 'Scheduler hit was successfully destroyed.'
  end

  private

  def scheduler_hit_params
    params.permit(:task, :interval, :environment)
  end
end
