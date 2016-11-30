class EvalResultsController < ApplicationController
  def index
    @eval_results = EvalResult.all

    render("eval_results/index.html.erb")
  end

  def show
    @eval_result = EvalResult.find(params[:id])

    render("eval_results/show.html.erb")
  end

  def new
    @eval_result = EvalResult.new

    render("eval_results/new.html.erb")
  end

  def create
    @eval_result = EvalResult.new

    @eval_result.results_description = params[:results_description]

    save_status = @eval_result.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_results/new", "/create_eval_result"
        redirect_to("/eval_results")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval result created successfully.")
      end
    else
      render("eval_results/new.html.erb")
    end
  end

  def edit
    @eval_result = EvalResult.find(params[:id])

    render("eval_results/edit.html.erb")
  end

  def update
    @eval_result = EvalResult.find(params[:id])

    @eval_result.results_description = params[:results_description]

    save_status = @eval_result.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_results/#{@eval_result.id}/edit", "/update_eval_result"
        redirect_to("/eval_results/#{@eval_result.id}", :notice => "Eval result updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval result updated successfully.")
      end
    else
      render("eval_results/edit.html.erb")
    end
  end

  def destroy
    @eval_result = EvalResult.find(params[:id])

    @eval_result.destroy

    if URI(request.referer).path == "/eval_results/#{@eval_result.id}"
      redirect_to("/", :notice => "Eval result deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Eval result deleted.")
    end
  end
end
