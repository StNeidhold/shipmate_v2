class AdditionalRatingReferencesController < ApplicationController
  def index
    @additional_rating_references = AdditionalRatingReference.page(params[:page]).per(10)

    render("additional_rating_references/index.html.erb")
  end

  def show
    @additional_rating_reference = AdditionalRatingReference.find(params[:id])

    render("additional_rating_references/show.html.erb")
  end

  def new
    @additional_rating_reference = AdditionalRatingReference.new

    render("additional_rating_references/new.html.erb")
  end

  def create
    @additional_rating_reference = AdditionalRatingReference.new

    @additional_rating_reference.rating_id = params[:rating_id]
    @additional_rating_reference.rating_reference_text = params[:rating_reference_text]

    save_status = @additional_rating_reference.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/additional_rating_references/new", "/create_additional_rating_reference"
        redirect_to("/additional_rating_references")
      else
        redirect_back(:fallback_location => "/", :notice => "Additional rating reference created successfully.")
      end
    else
      render("additional_rating_references/new.html.erb")
    end
  end

  def edit
    @additional_rating_reference = AdditionalRatingReference.find(params[:id])

    render("additional_rating_references/edit.html.erb")
  end

  def update
    @additional_rating_reference = AdditionalRatingReference.find(params[:id])

    @additional_rating_reference.rating_id = params[:rating_id]
    @additional_rating_reference.rating_reference_text = params[:rating_reference_text]

    save_status = @additional_rating_reference.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/additional_rating_references/#{@additional_rating_reference.id}/edit", "/update_additional_rating_reference"
        redirect_to("/additional_rating_references/#{@additional_rating_reference.id}", :notice => "Additional rating reference updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Additional rating reference updated successfully.")
      end
    else
      render("additional_rating_references/edit.html.erb")
    end
  end

  def destroy
    @additional_rating_reference = AdditionalRatingReference.find(params[:id])

    @additional_rating_reference.destroy

    if URI(request.referer).path == "/additional_rating_references/#{@additional_rating_reference.id}"
      redirect_to("/", :notice => "Additional rating reference deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Additional rating reference deleted.")
    end
  end
end
