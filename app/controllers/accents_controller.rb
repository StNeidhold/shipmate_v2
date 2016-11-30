class AccentsController < ApplicationController
  def index
    @q = Accent.ransack(params[:q])
    @accents = @q.result(:distinct => true).includes().page(params[:page]).per(10)

    render("accents/index.html.erb")
  end

  def show
    @accent = Accent.find(params[:id])

    render("accents/show.html.erb")
  end

  def new
    @accent = Accent.new

    render("accents/new.html.erb")
  end

  def create
    @accent = Accent.new

    @accent.description = params[:description]
    @accent.text = params[:text]

    save_status = @accent.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/accents/new", "/create_accent"
        redirect_to("/accents")
      else
        redirect_back(:fallback_location => "/", :notice => "Accent created successfully.")
      end
    else
      render("accents/new.html.erb")
    end
  end

  def edit
    @accent = Accent.find(params[:id])

    render("accents/edit.html.erb")
  end

  def update
    @accent = Accent.find(params[:id])

    @accent.description = params[:description]
    @accent.text = params[:text]

    save_status = @accent.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/accents/#{@accent.id}/edit", "/update_accent"
        redirect_to("/accents/#{@accent.id}", :notice => "Accent updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Accent updated successfully.")
      end
    else
      render("accents/edit.html.erb")
    end
  end

  def destroy
    @accent = Accent.find(params[:id])

    @accent.destroy

    if URI(request.referer).path == "/accents/#{@accent.id}"
      redirect_to("/", :notice => "Accent deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Accent deleted.")
    end
  end
end
