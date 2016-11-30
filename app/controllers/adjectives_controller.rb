class AdjectivesController < ApplicationController
  def index
    @adjectives = Adjective.all

    render("adjectives/index.html.erb")
  end

  def show
    @adjective = Adjective.find(params[:id])

    render("adjectives/show.html.erb")
  end

  def new
    @adjective = Adjective.new

    render("adjectives/new.html.erb")
  end

  def create
    @adjective = Adjective.new

    @adjective.adjective_word = params[:adjective_word]

    save_status = @adjective.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/adjectives/new", "/create_adjective"
        redirect_to("/adjectives")
      else
        redirect_back(:fallback_location => "/", :notice => "Adjective created successfully.")
      end
    else
      render("adjectives/new.html.erb")
    end
  end

  def edit
    @adjective = Adjective.find(params[:id])

    render("adjectives/edit.html.erb")
  end

  def update
    @adjective = Adjective.find(params[:id])

    @adjective.adjective_word = params[:adjective_word]

    save_status = @adjective.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/adjectives/#{@adjective.id}/edit", "/update_adjective"
        redirect_to("/adjectives/#{@adjective.id}", :notice => "Adjective updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Adjective updated successfully.")
      end
    else
      render("adjectives/edit.html.erb")
    end
  end

  def destroy
    @adjective = Adjective.find(params[:id])

    @adjective.destroy

    if URI(request.referer).path == "/adjectives/#{@adjective.id}"
      redirect_to("/", :notice => "Adjective deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Adjective deleted.")
    end
  end
end
