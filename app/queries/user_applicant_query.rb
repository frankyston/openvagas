class UserApplicantQuery
  attr_reader :user_id, :position_id
  def initialize(user_id, position_id)
    @user_id = user_id
    @position_id = position_id
  end

  def call
    user_have_applicant?
  end

  private

  def user_have_applicant?
    Applicant.where(user_id: user_id, position_id: position_id).present?
  end
end
