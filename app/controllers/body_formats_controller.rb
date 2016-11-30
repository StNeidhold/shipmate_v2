class BodyFormatsController < ApplicationController
  def index
    @q = BodyFormat.ransack(params[:q])
    @body_formats = @q.result(:distinct => true).includes(:evals).page(params[:page]).per(10)

    render("body_formats/index.html.erb")
  end

  def show
    @write_up = WriteUp.new
    @body_format = BodyFormat.find(params[:id])

    render("body_formats/show.html.erb")
  end

  def new
    @body_format = BodyFormat.new

    render("body_formats/new.html.erb")
  end

  def create
    @body_format = BodyFormat.new

    @body_format.description = params[:description]

    save_status = @body_format.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/body_formats/new", "/create_body_format"
        redirect_to("/body_formats")
      else
        redirect_back(:fallback_location => "/", :notice => "Body format created successfully.")
      end
    else
      render("body_formats/new.html.erb")
    end
  end

  def edit
    @body_format = BodyFormat.find(params[:id])

    render("body_formats/edit.html.erb")
  end

  def update
    @body_format = BodyFormat.find(params[:id])

    @body_format.description = params[:description]

    save_status = @body_format.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/body_formats/#{@body_format.id}/edit", "/update_body_format"
        redirect_to("/body_formats/#{@body_format.id}", :notice => "Body format updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Body format updated successfully.")
      end
    else
      render("body_formats/edit.html.erb")
    end
  end

  def destroy
    @body_format = BodyFormat.find(params[:id])

    @body_format.destroy

    if URI(request.referer).path == "/body_formats/#{@body_format.id}"
      redirect_to("/", :notice => "Body format deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Body format deleted.")
    end
  end
end
