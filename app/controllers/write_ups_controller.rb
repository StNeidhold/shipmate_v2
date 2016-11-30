class WriteUpsController < ApplicationController
  def index
    @write_ups = WriteUp.page(params[:page]).per(10)

    render("write_ups/index.html.erb")
  end

  def show
    @write_up = WriteUp.find(params[:id])

    render("write_ups/show.html.erb")
  end

  def new
    @write_up = WriteUp.new

    render("write_ups/new.html.erb")
  end

  def create
    @write_up = WriteUp.new

    @write_up.breakout_statement_text = params[:breakout_statement_text]
    @write_up.heading_opening1 = params[:heading_opening1]
    @write_up.heading_opening2 = params[:heading_opening2]
    @write_up.breakout_statement_format_id = params[:breakout_statement_format_id]
    @write_up.heading_opening = params[:heading_opening]
    @write_up.heading_opening_format_id = params[:heading_opening_format_id]
    @write_up.heading_second_opening = params[:heading_second_opening]
    @write_up.body_format_id = params[:body_format_id]
    @write_up.bullet_one = params[:bullet_one]
    @write_up.bullet_two = params[:bullet_two]
    @write_up.bullet_format_id = params[:bullet_format_id]
    @write_up.bullet_three = params[:bullet_three]
    @write_up.bullet_4 = params[:bullet_4]
    @write_up.closing = params[:closing]
    @write_up.eval_id = params[:eval_id]

    save_status = @write_up.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/write_ups/new", "/create_write_up"
        redirect_to("/write_ups")
      else
        redirect_back(:fallback_location => "/", :notice => "Write up created successfully.")
      end
    else
      render("write_ups/new.html.erb")
    end
  end

  def edit
    @write_up = WriteUp.find(params[:id])

    render("write_ups/edit.html.erb")
  end

  def update
    @write_up = WriteUp.find(params[:id])

    @write_up.breakout_statement_text = params[:breakout_statement_text]
    @write_up.heading_opening1 = params[:heading_opening1]
    @write_up.heading_opening2 = params[:heading_opening2]
    @write_up.breakout_statement_format_id = params[:breakout_statement_format_id]
    @write_up.heading_opening = params[:heading_opening]
    @write_up.heading_opening_format_id = params[:heading_opening_format_id]
    @write_up.heading_second_opening = params[:heading_second_opening]
    @write_up.body_format_id = params[:body_format_id]
    @write_up.bullet_one = params[:bullet_one]
    @write_up.bullet_two = params[:bullet_two]
    @write_up.bullet_format_id = params[:bullet_format_id]
    @write_up.bullet_three = params[:bullet_three]
    @write_up.bullet_4 = params[:bullet_4]
    @write_up.closing = params[:closing]
    @write_up.eval_id = params[:eval_id]

    save_status = @write_up.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/write_ups/#{@write_up.id}/edit", "/update_write_up"
        redirect_to("/write_ups/#{@write_up.id}", :notice => "Write up updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Write up updated successfully.")
      end
    else
      render("write_ups/edit.html.erb")
    end
  end

  def destroy
    @write_up = WriteUp.find(params[:id])

    @write_up.destroy

    if URI(request.referer).path == "/write_ups/#{@write_up.id}"
      redirect_to("/", :notice => "Write up deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Write up deleted.")
    end
  end
end
