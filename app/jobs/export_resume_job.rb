class ExportResumeJob < ApplicationJob
  queue_as :mailers

  def perform(user_id, position_id)
    current_user = User.find(user_id)
    position = Position.find(position_id)
    UserMailer.export_resume(current_user, position).deliver_now
  end
end
