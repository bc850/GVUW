class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout 'author'

  before_action :set_campaign_nav

  def set_campaign_nav
    @campaign_nav = Campaign.published.year_desc
  end
end
