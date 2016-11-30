class HeadingOpeningFormatsController < ApplicationController
  def index
    @heading_opening_formats = HeadingOpeningFormat.all

    render("heading_opening_formats/index.html.erb")
  end

  def show
    @write_up = WriteUp.new
    @heading_opening_format = HeadingOpeningFormat.find(params[:id])

    render("heading_opening_formats/show.html.erb")
  end

  def new
    @heading_opening_format = HeadingOpeningFormat.new

    render("heading_opening_formats/new.html.erb")
  end

  def create
    @heading_opening_format = HeadingOpeningFormat.new

    @heading_opening_format.description = params[:description]

    save_status = @heading_opening_format.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/heading_opening_formats/new", "/create_heading_opening_format"
        redirect_to("/heading_opening_formats")
      else
        redirect_back(:fallback_location => "/", :notice => "Heading opening format created successfully.")
      end
    else
      render("heading_opening_formats/new.html.erb")
    end
  end

  def edit
    @heading_opening_format = HeadingOpeningFormat.find(params[:id])

    render("heading_opening_formats/edit.html.erb")
  end

  def update
    @heading_opening_format = HeadingOpeningFormat.find(params[:id])

    @heading_opening_format.description = params[:description]

    save_status = @heading_opening_format.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/heading_opening_formats/#{@heading_opening_format.id}/edit", "/update_heading_opening_format"
        redirect_to("/heading_opening_formats/#{@heading_opening_format.id}", :notice => "Heading opening format updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Heading opening format updated successfully.")
      end
    else
      render("heading_opening_formats/edit.html.erb")
    end
  end

  def destroy
    @heading_opening_format = HeadingOpeningFormat.find(params[:id])

    @heading_opening_format.destroy

    if URI(request.referer).path == "/heading_opening_formats/#{@heading_opening_format.id}"
      redirect_to("/", :notice => "Heading opening format deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Heading opening format deleted.")
    end
  end
end
