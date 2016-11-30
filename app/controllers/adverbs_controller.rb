class AdverbsController < ApplicationController
  def index
    @q = Adverb.ransack(params[:q])
    @adverbs = @q.result(:distinct => true).includes().page(params[:page]).per(10)

    render("adverbs/index.html.erb")
  end

  def show
    @adverb = Adverb.find(params[:id])

    render("adverbs/show.html.erb")
  end

  def new
    @adverb = Adverb.new

    render("adverbs/new.html.erb")
  end

  def create
    @adverb = Adverb.new

    @adverb.adverb_word = params[:adverb_word]

    save_status = @adverb.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/adverbs/new", "/create_adverb"
        redirect_to("/adverbs")
      else
        redirect_back(:fallback_location => "/", :notice => "Adverb created successfully.")
      end
    else
      render("adverbs/new.html.erb")
    end
  end

  def edit
    @adverb = Adverb.find(params[:id])

    render("adverbs/edit.html.erb")
  end

  def update
    @adverb = Adverb.find(params[:id])

    @adverb.adverb_word = params[:adverb_word]

    save_status = @adverb.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/adverbs/#{@adverb.id}/edit", "/update_adverb"
        redirect_to("/adverbs/#{@adverb.id}", :notice => "Adverb updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Adverb updated successfully.")
      end
    else
      render("adverbs/edit.html.erb")
    end
  end

  def destroy
    @adverb = Adverb.find(params[:id])

    @adverb.destroy

    if URI(request.referer).path == "/adverbs/#{@adverb.id}"
      redirect_to("/", :notice => "Adverb deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Adverb deleted.")
    end
  end
end
