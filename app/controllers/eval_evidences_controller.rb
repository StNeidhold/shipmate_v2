class EvalEvidencesController < ApplicationController
  def index
    @eval_evidences = EvalEvidence.all

    render("eval_evidences/index.html.erb")
  end

  def show
    @eval_evidence = EvalEvidence.find(params[:id])

    render("eval_evidences/show.html.erb")
  end

  def new
    @eval_evidence = EvalEvidence.new

    render("eval_evidences/new.html.erb")
  end

  def create
    @eval_evidence = EvalEvidence.new

    @eval_evidence.evidence_description = params[:evidence_description]

    save_status = @eval_evidence.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_evidences/new", "/create_eval_evidence"
        redirect_to("/eval_evidences")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval evidence created successfully.")
      end
    else
      render("eval_evidences/new.html.erb")
    end
  end

  def edit
    @eval_evidence = EvalEvidence.find(params[:id])

    render("eval_evidences/edit.html.erb")
  end

  def update
    @eval_evidence = EvalEvidence.find(params[:id])

    @eval_evidence.evidence_description = params[:evidence_description]

    save_status = @eval_evidence.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/eval_evidences/#{@eval_evidence.id}/edit", "/update_eval_evidence"
        redirect_to("/eval_evidences/#{@eval_evidence.id}", :notice => "Eval evidence updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Eval evidence updated successfully.")
      end
    else
      render("eval_evidences/edit.html.erb")
    end
  end

  def destroy
    @eval_evidence = EvalEvidence.find(params[:id])

    @eval_evidence.destroy

    if URI(request.referer).path == "/eval_evidences/#{@eval_evidence.id}"
      redirect_to("/", :notice => "Eval evidence deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Eval evidence deleted.")
    end
  end
end
