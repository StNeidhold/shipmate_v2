class CollateralDutiesController < ApplicationController
  def index
    @q = CollateralDuty.ransack(params[:q])
    @collateral_duties = @q.result(:distinct => true).includes().page(params[:page]).per(10)

    render("collateral_duties/index.html.erb")
  end

  def show
    @collateral_duty = CollateralDuty.find(params[:id])

    render("collateral_duties/show.html.erb")
  end

  def new
    @collateral_duty = CollateralDuty.new

    render("collateral_duties/new.html.erb")
  end

  def create
    @collateral_duty = CollateralDuty.new

    @collateral_duty.collateral_duty_name = params[:collateral_duty_name]

    save_status = @collateral_duty.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/collateral_duties/new", "/create_collateral_duty"
        redirect_to("/collateral_duties")
      else
        redirect_back(:fallback_location => "/", :notice => "Collateral duty created successfully.")
      end
    else
      render("collateral_duties/new.html.erb")
    end
  end

  def edit
    @collateral_duty = CollateralDuty.find(params[:id])

    render("collateral_duties/edit.html.erb")
  end

  def update
    @collateral_duty = CollateralDuty.find(params[:id])

    @collateral_duty.collateral_duty_name = params[:collateral_duty_name]

    save_status = @collateral_duty.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/collateral_duties/#{@collateral_duty.id}/edit", "/update_collateral_duty"
        redirect_to("/collateral_duties/#{@collateral_duty.id}", :notice => "Collateral duty updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Collateral duty updated successfully.")
      end
    else
      render("collateral_duties/edit.html.erb")
    end
  end

  def destroy
    @collateral_duty = CollateralDuty.find(params[:id])

    @collateral_duty.destroy

    if URI(request.referer).path == "/collateral_duties/#{@collateral_duty.id}"
      redirect_to("/", :notice => "Collateral duty deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Collateral duty deleted.")
    end
  end
end
