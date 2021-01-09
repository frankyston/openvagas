class PositionsController < ApplicationController
  before_action :set_company, :set_i18n_careers, :set_i18n_contracts
  before_action :set_position, only: [:edit, :show, :update]

  def index
    @positions = @company.positions
  end

  def new
    @position = @company.positions.new
  end

  def edit
  end

  def show
  end

  def create
    @position = @company.positions.new(params_position)
    if @position.save
      flash[:success] = 'Vaga cadastrada com sucesso.'
      redirect_to positions_path
    else
      render :new
    end
  end

  def update
    if @position.update(params_position)
      redirect_to positions_path
    else
      render :edit
    end
  end

  private

  def set_position
    @position = @company.positions.find(params[:id])
  end

  def params_position
    params.require(:position).permit(:name, :career, :contract, :remote, :publish, :city, :state, :summary, :description)
  end

  def set_company
    redirect_to new_company_path if current_user.company.nil?
    @company = current_user.company
  end

  def set_i18n_careers
    @careers = I18n.t('activerecord.attributes.position.careers')
  end

  def set_i18n_contracts
    @contracts = I18n.t('activerecord.attributes.position.contracts')
  end
end
