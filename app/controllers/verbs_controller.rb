class VerbsController < ApplicationController
  def index
    @q = Verb.ransack(params[:q])
    @verbs = @q.result(:distinct => true).includes().page(params[:page]).per(10)

    render("verbs/index.html.erb")
  end

  def show
    @verb = Verb.find(params[:id])

    render("verbs/show.html.erb")
  end

  def new
    @verb = Verb.new

    render("verbs/new.html.erb")
  end

  def create
    @verb = Verb.new

    @verb.verb_word = params[:verb_word]

    save_status = @verb.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/verbs/new", "/create_verb"
        redirect_to("/verbs")
      else
        redirect_back(:fallback_location => "/", :notice => "Verb created successfully.")
      end
    else
      render("verbs/new.html.erb")
    end
  end

  def edit
    @verb = Verb.find(params[:id])

    render("verbs/edit.html.erb")
  end

  def update
    @verb = Verb.find(params[:id])

    @verb.verb_word = params[:verb_word]

    save_status = @verb.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/verbs/#{@verb.id}/edit", "/update_verb"
        redirect_to("/verbs/#{@verb.id}", :notice => "Verb updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Verb updated successfully.")
      end
    else
      render("verbs/edit.html.erb")
    end
  end

  def destroy
    @verb = Verb.find(params[:id])

    @verb.destroy

    if URI(request.referer).path == "/verbs/#{@verb.id}"
      redirect_to("/", :notice => "Verb deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Verb deleted.")
    end
  end
end
