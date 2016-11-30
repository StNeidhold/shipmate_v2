class EvalActionsController < ApplicationController
  def index
    @eval_actions = EvalAction.all

    render("eval_actions/index.html.erb")
  end

  def show
    @eval_action = EvalAction.find(params[:id])

    render("eval_actions/show.html.erb")
  end

  def new
    @eval_action = EvalAction.new

    render("eval_actions/new.html.erb")
  end

  def create
    @eval_action = EvalAction.new

    @eval_action.action_description = params[:action_description]

    save_status = @eval_action.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_actions/new", "/create_eval_action"
        redirect_to("/eval_actions")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval action created successfully.")
      end
    else
      render("eval_actions/new.html.erb")
    end
  end

  def edit
    @eval_action = EvalAction.find(params[:id])

    render("eval_actions/edit.html.erb")
  end

  def update
    @eval_action = EvalAction.find(params[:id])

    @eval_action.action_description = params[:action_description]

    save_status = @eval_action.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_actions/#{@eval_action.id}/edit", "/update_eval_action"
        redirect_to("/eval_actions/#{@eval_action.id}", :notice => "Eval action updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval action updated successfully.")
      end
    else
      render("eval_actions/edit.html.erb")
    end
  end

  def destroy
    @eval_action = EvalAction.find(params[:id])

    @eval_action.destroy

    if URI(request.referer).path == "/eval_actions/#{@eval_action.id}"
      redirect_to("/", :notice => "Eval action deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Eval action deleted.")
    end
  end
end
