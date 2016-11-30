class NounsController < ApplicationController
  def index
    @nouns = Noun.page(params[:page]).per(10)

    render("nouns/index.html.erb")
  end

  def show
    @noun = Noun.find(params[:id])

    render("nouns/show.html.erb")
  end

  def new
    @noun = Noun.new

    render("nouns/new.html.erb")
  end

  def create
    @noun = Noun.new

    @noun.noun_word = params[:noun_word]

    save_status = @noun.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/nouns/new", "/create_noun"
        redirect_to("/nouns")
      else
        redirect_back(:fallback_location => "/", :notice => "Noun created successfully.")
      end
    else
      render("nouns/new.html.erb")
    end
  end

  def edit
    @noun = Noun.find(params[:id])

    render("nouns/edit.html.erb")
  end

  def update
    @noun = Noun.find(params[:id])

    @noun.noun_word = params[:noun_word]

    save_status = @noun.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/nouns/#{@noun.id}/edit", "/update_noun"
        redirect_to("/nouns/#{@noun.id}", :notice => "Noun updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Noun updated successfully.")
      end
    else
      render("nouns/edit.html.erb")
    end
  end

  def destroy
    @noun = Noun.find(params[:id])

    @noun.destroy

    if URI(request.referer).path == "/nouns/#{@noun.id}"
      redirect_to("/", :notice => "Noun deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Noun deleted.")
    end
  end
end
