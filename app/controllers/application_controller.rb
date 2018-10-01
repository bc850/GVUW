class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout 'author'

  before_action :set_campaign_nav
  before_action :set_organization

  def set_campaign_nav
    @campaign_nav = Campaign.published.year_desc.friendly
  end

  def set_organization
    @organization = Organization.first
  end
end
