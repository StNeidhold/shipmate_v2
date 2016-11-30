class EvalsController < ApplicationController
  def index
    @evals = Eval.all

    render("evals/index.html.erb")
  end

  def show
    @eval = Eval.find(params[:id])

    render("evals/show.html.erb")
  end

  def new
    @eval = Eval.new

    render("evals/new.html.erb")
  end

  def create
    @eval = Eval.new

    @eval.sailor_id = params[:sailor_id]
    @eval.eval_group_id = params[:eval_group_id]
    @eval.trait_average = params[:trait_average]
    @eval.mark_ones = params[:mark_ones]
    @eval.mark_twos = params[:mark_twos]
    @eval.mark_threes = params[:mark_threes]
    @eval.mark_fours = params[:mark_fours]
    @eval.mark_fives = params[:mark_fives]
    @eval.promotion_recommendation = params[:promotion_recommendation]

    save_status = @eval.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/evals/new", "/create_eval"
        redirect_to("/evals")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval created successfully.")
      end
    else
      render("evals/new.html.erb")
    end
  end

  def edit
    @eval = Eval.find(params[:id])

    render("evals/edit.html.erb")
  end

  def update
    @eval = Eval.find(params[:id])

    @eval.sailor_id = params[:sailor_id]
    @eval.eval_group_id = params[:eval_group_id]
    @eval.trait_average = params[:trait_average]
    @eval.mark_ones = params[:mark_ones]
    @eval.mark_twos = params[:mark_twos]
    @eval.mark_threes = params[:mark_threes]
    @eval.mark_fours = params[:mark_fours]
    @eval.mark_fives = params[:mark_fives]
    @eval.promotion_recommendation = params[:promotion_recommendation]

    save_status = @eval.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/evals/#{@eval.id}/edit", "/update_eval"
        redirect_to("/evals/#{@eval.id}", :notice => "Eval updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval updated successfully.")
      end
    else
      render("evals/edit.html.erb")
    end
  end

  def destroy
    @eval = Eval.find(params[:id])

    @eval.destroy

    if URI(request.referer).path == "/evals/#{@eval.id}"
      redirect_to("/", :notice => "Eval deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Eval deleted.")
    end
  end
end
