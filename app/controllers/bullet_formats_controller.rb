class BulletFormatsController < ApplicationController
  def index
    @bullet_formats = BulletFormat.page(params[:page]).per(10)

    render("bullet_formats/index.html.erb")
  end

  def show
    @write_up = WriteUp.new
    @bullet_format = BulletFormat.find(params[:id])

    render("bullet_formats/show.html.erb")
  end

  def new
    @bullet_format = BulletFormat.new

    render("bullet_formats/new.html.erb")
  end

  def create
    @bullet_format = BulletFormat.new

    @bullet_format.description = params[:description]

    save_status = @bullet_format.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bullet_formats/new", "/create_bullet_format"
        redirect_to("/bullet_formats")
      else
        redirect_back(:fallback_location => "/", :notice => "Bullet format created successfully.")
      end
    else
      render("bullet_formats/new.html.erb")
    end
  end

  def edit
    @bullet_format = BulletFormat.find(params[:id])

    render("bullet_formats/edit.html.erb")
  end

  def update
    @bullet_format = BulletFormat.find(params[:id])

    @bullet_format.description = params[:description]

    save_status = @bullet_format.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bullet_formats/#{@bullet_format.id}/edit", "/update_bullet_format"
        redirect_to("/bullet_formats/#{@bullet_format.id}", :notice => "Bullet format updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Bullet format updated successfully.")
      end
    else
      render("bullet_formats/edit.html.erb")
    end
  end

  def destroy
    @bullet_format = BulletFormat.find(params[:id])

    @bullet_format.destroy

    if URI(request.referer).path == "/bullet_formats/#{@bullet_format.id}"
      redirect_to("/", :notice => "Bullet format deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Bullet format deleted.")
    end
  end
end
