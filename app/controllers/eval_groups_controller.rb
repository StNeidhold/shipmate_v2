class EvalGroupsController < ApplicationController
  before_action :current_user_must_be_eval_group_user, :only => [:show, :edit, :update, :destroy]

  def current_user_must_be_eval_group_user
    eval_group = EvalGroup.find(params[:id])

    unless current_user == eval_group.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @eval_groups = current_user.eval_groups.page(params[:page]).per(10)

    render("eval_groups/index.html.erb")
  end

  def show
    @eval_group = EvalGroup.find(params[:id])

    render("eval_groups/show.html.erb")
  end

  def new
    @eval_group = EvalGroup.new

    render("eval_groups/new.html.erb")
  end

  def create
    @eval_group = EvalGroup.new

    @eval_group.group_name = params[:group_name]
    @eval_group.group_description = params[:group_description]
    @eval_group.group_rank = params[:group_rank]
    @eval_group.user_id = params[:user_id]

    save_status = @eval_group.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_groups/new", "/create_eval_group"
        redirect_to("/eval_groups")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval group created successfully.")
      end
    else
      render("eval_groups/new.html.erb")
    end
  end

  def edit
    @eval_group = EvalGroup.find(params[:id])

    render("eval_groups/edit.html.erb")
  end

  def update
    @eval_group = EvalGroup.find(params[:id])

    @eval_group.group_name = params[:group_name]
    @eval_group.group_description = params[:group_description]
    @eval_group.group_rank = params[:group_rank]
    @eval_group.user_id = params[:user_id]

    save_status = @eval_group.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_groups/#{@eval_group.id}/edit", "/update_eval_group"
        redirect_to("/eval_groups/#{@eval_group.id}", :notice => "Eval group updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval group updated successfully.")
      end
    else
      render("eval_groups/edit.html.erb")
    end
  end

  def destroy
    @eval_group = EvalGroup.find(params[:id])

    @eval_group.destroy

    if URI(request.referer).path == "/eval_groups/#{@eval_group.id}"
      redirect_to("/", :notice => "Eval group deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Eval group deleted.")
    end
  end
end
