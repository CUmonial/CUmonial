module LandingsHelper
 def resource_name
    :app_user
  end

  def resource
    @resource ||= AppUser.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:app_user]
  end
end
