class Curator::BaseController < ApplicationController
  REDIRECT_ALERT_MESSAGE = 'You are not allowed to access the curator interface!'.freeze

  before_action :require_curator_role

  private

  def require_curator_role
    redirect_to(root_url, alert: REDIRECT_ALERT_MESSAGE) unless current_user.has_role?(:curator)
  end
end
