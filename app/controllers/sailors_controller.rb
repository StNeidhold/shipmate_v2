class SailorsController < ApplicationController
  def index
    @sailors = Sailor.all

    render("sailors/index.html.erb")
  end

  def show
    @eval = Eval.new
    @sailor = Sailor.find(params[:id])

    render("sailors/show.html.erb")
  end

  def new
    @sailor = Sailor.new

    render("sailors/new.html.erb")
  end

  def create
    @sailor = Sailor.new

    @sailor.first_name = params[:first_name]
    @sailor.last_name = params[:last_name]
    @sailor.middle_name = params[:middle_name]
    @sailor.division = params[:division]
    @sailor.command = params[:command]
    @sailor.rank = params[:rank]
    @sailor.rating = params[:rating]
    @sailor.position = params[:position]
    @sailor.collateral_duty_1 = params[:collateral_duty_1]
    @sailor.collateral_duty_2 = params[:collateral_duty_2]
    @sailor.collateral_duty_3 = params[:collateral_duty_3]
    @sailor.primary_responsibility = params[:primary_responsibility]

    save_status = @sailor.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/sailors/new", "/create_sailor"
        redirect_to("/sailors")
      else
        redirect_back(:fallback_location => "/", :notice => "Sailor created successfully.")
      end
    else
      render("sailors/new.html.erb")
    end
  end

  def edit
    @sailor = Sailor.find(params[:id])

    render("sailors/edit.html.erb")
  end

  def update
    @sailor = Sailor.find(params[:id])

    @sailor.first_name = params[:first_name]
    @sailor.last_name = params[:last_name]
    @sailor.middle_name = params[:middle_name]
    @sailor.division = params[:division]
    @sailor.command = params[:command]
    @sailor.rank = params[:rank]
    @sailor.rating = params[:rating]
    @sailor.position = params[:position]
    @sailor.collateral_duty_1 = params[:collateral_duty_1]
    @sailor.collateral_duty_2 = params[:collateral_duty_2]
    @sailor.collateral_duty_3 = params[:collateral_duty_3]
    @sailor.primary_responsibility = params[:primary_responsibility]

    save_status = @sailor.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/sailors/#{@sailor.id}/edit", "/update_sailor"
        redirect_to("/sailors/#{@sailor.id}", :notice => "Sailor updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Sailor updated successfully.")
      end
    else
      render("sailors/edit.html.erb")
    end
  end

  def destroy
    @sailor = Sailor.find(params[:id])

    @sailor.destroy

    if URI(request.referer).path == "/sailors/#{@sailor.id}"
      redirect_to("/", :notice => "Sailor deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Sailor deleted.")
    end
  end
end
