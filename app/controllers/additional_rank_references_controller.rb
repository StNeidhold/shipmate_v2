class AdditionalRankReferencesController < ApplicationController
  def index
    @q = AdditionalRankReference.ransack(params[:q])
    @additional_rank_references = @q.result(:distinct => true).includes(:rank).page(params[:page]).per(10)

    render("additional_rank_references/index.html.erb")
  end

  def show
    @additional_rank_reference = AdditionalRankReference.find(params[:id])

    render("additional_rank_references/show.html.erb")
  end

  def new
    @additional_rank_reference = AdditionalRankReference.new

    render("additional_rank_references/new.html.erb")
  end

  def create
    @additional_rank_reference = AdditionalRankReference.new

    @additional_rank_reference.rank_id = params[:rank_id]
    @additional_rank_reference.rank_reference_text = params[:rank_reference_text]

    save_status = @additional_rank_reference.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/additional_rank_references/new", "/create_additional_rank_reference"
        redirect_to("/additional_rank_references")
      else
        redirect_back(:fallback_location => "/", :notice => "Additional rank reference created successfully.")
      end
    else
      render("additional_rank_references/new.html.erb")
    end
  end

  def edit
    @additional_rank_reference = AdditionalRankReference.find(params[:id])

    render("additional_rank_references/edit.html.erb")
  end

  def update
    @additional_rank_reference = AdditionalRankReference.find(params[:id])

    @additional_rank_reference.rank_id = params[:rank_id]
    @additional_rank_reference.rank_reference_text = params[:rank_reference_text]

    save_status = @additional_rank_reference.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/additional_rank_references/#{@additional_rank_reference.id}/edit", "/update_additional_rank_reference"
        redirect_to("/additional_rank_references/#{@additional_rank_reference.id}", :notice => "Additional rank reference updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Additional rank reference updated successfully.")
      end
    else
      render("additional_rank_references/edit.html.erb")
    end
  end

  def destroy
    @additional_rank_reference = AdditionalRankReference.find(params[:id])

    @additional_rank_reference.destroy

    if URI(request.referer).path == "/additional_rank_references/#{@additional_rank_reference.id}"
      redirect_to("/", :notice => "Additional rank reference deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Additional rank reference deleted.")
    end
  end
end
