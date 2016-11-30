class EvalAccomplishmentsController < ApplicationController
  def index
    @eval_accomplishments = EvalAccomplishment.all

    render("eval_accomplishments/index.html.erb")
  end

  def show
    @eval_accomplishment = EvalAccomplishment.find(params[:id])

    render("eval_accomplishments/show.html.erb")
  end

  def new
    @eval_accomplishment = EvalAccomplishment.new

    render("eval_accomplishments/new.html.erb")
  end

  def create
    @eval_accomplishment = EvalAccomplishment.new

    @eval_accomplishment.accomplishment_description = params[:accomplishment_description]

    save_status = @eval_accomplishment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_accomplishments/new", "/create_eval_accomplishment"
        redirect_to("/eval_accomplishments")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval accomplishment created successfully.")
      end
    else
      render("eval_accomplishments/new.html.erb")
    end
  end

  def edit
    @eval_accomplishment = EvalAccomplishment.find(params[:id])

    render("eval_accomplishments/edit.html.erb")
  end

  def update
    @eval_accomplishment = EvalAccomplishment.find(params[:id])

    @eval_accomplishment.accomplishment_description = params[:accomplishment_description]

    save_status = @eval_accomplishment.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_accomplishments/#{@eval_accomplishment.id}/edit", "/update_eval_accomplishment"
        redirect_to("/eval_accomplishments/#{@eval_accomplishment.id}", :notice => "Eval accomplishment updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval accomplishment updated successfully.")
      end
    else
      render("eval_accomplishments/edit.html.erb")
    end
  end

  def destroy
    @eval_accomplishment = EvalAccomplishment.find(params[:id])

    @eval_accomplishment.destroy

    if URI(request.referer).path == "/eval_accomplishments/#{@eval_accomplishment.id}"
      redirect_to("/", :notice => "Eval accomplishment deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Eval accomplishment deleted.")
    end
  end
end
