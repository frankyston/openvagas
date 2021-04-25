class ApplicantsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @applicant = current_user.applicants.new(applicant_params)
    if @applicant.save
      flash[:notice] = 'Você acabou de aplicar para a vaga com sucesso.'
    else
      flash[:error] = 'Houve um erro ao aplicar para a vaga. Tente novamente.'
    end
    redirect_to public_position_path(@applicant.position.slug)
  end

  private

  def applicant_params
    params.require(:applicant).permit(:name, :email, :phone, :position_id)
  end
end
