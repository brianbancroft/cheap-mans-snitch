class CheckinsController < ApplicationController
  http_basic_authenticate_with name: ENV['username'],
                               password: ENV['password'],
                               except: :new_scheduler_action

  # GET /
  def index
    @scheduler_tasks = SchedulerTask.all
    @checkins = Checkin.all.order('created_at DESC')
  end

  # POST /new-hit
  def new_scheduler_action
    task = SchedulerTask.find_by(scheduler_hit_params)
    task = SchedulerTask.create(scheduler_hit_params) if task.nil?
    task.update(last_checkin: DateTime.current)
    task.checkins.create
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
