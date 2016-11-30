class BreakoutStatementFormatsController < ApplicationController
  def index
    @breakout_statement_formats = BreakoutStatementFormat.all

    render("breakout_statement_formats/index.html.erb")
  end

  def show
    @write_up = WriteUp.new
    @breakout_statement_format = BreakoutStatementFormat.find(params[:id])

    render("breakout_statement_formats/show.html.erb")
  end

  def new
    @breakout_statement_format = BreakoutStatementFormat.new

    render("breakout_statement_formats/new.html.erb")
  end

  def create
    @breakout_statement_format = BreakoutStatementFormat.new

    @breakout_statement_format.description = params[:description]

    save_status = @breakout_statement_format.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/breakout_statement_formats/new", "/create_breakout_statement_format"
        redirect_to("/breakout_statement_formats")
      else
        redirect_back(:fallback_location => "/", :notice => "Breakout statement format created successfully.")
      end
    else
      render("breakout_statement_formats/new.html.erb")
    end
  end

  def edit
    @breakout_statement_format = BreakoutStatementFormat.find(params[:id])

    render("breakout_statement_formats/edit.html.erb")
  end

  def update
    @breakout_statement_format = BreakoutStatementFormat.find(params[:id])

    @breakout_statement_format.description = params[:description]

    save_status = @breakout_statement_format.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/breakout_statement_formats/#{@breakout_statement_format.id}/edit", "/update_breakout_statement_format"
        redirect_to("/breakout_statement_formats/#{@breakout_statement_format.id}", :notice => "Breakout statement format updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Breakout statement format updated successfully.")
      end
    else
      render("breakout_statement_formats/edit.html.erb")
    end
  end

  def destroy
    @breakout_statement_format = BreakoutStatementFormat.find(params[:id])

    @breakout_statement_format.destroy

    if URI(request.referer).path == "/breakout_statement_formats/#{@breakout_statement_format.id}"
      redirect_to("/", :notice => "Breakout statement format deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Breakout statement format deleted.")
    end
  end
end
