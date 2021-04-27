module FlashHelper
  def show_message(flash)
    if flash[:success].present?
      icon = 'success'
      title = 'Tudo certo!'
      message = flash[:success]
    elsif flash[:error].present?
      icon = 'error'
      title = 'Erro!'
      message = flash[:error]
    else
      icon = 'success'
      title = 'Alerta!'
      message = flash[:notice]
    end
    flash.clear
    return icon, title, message
  end
end
