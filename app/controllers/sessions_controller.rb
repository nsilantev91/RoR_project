class SessionsController < Devise::SessionsController

  def after_sign_in_path_for(resource)
    if resource.admin?
      '/home/admin'
    else
      root_path
    end
  end
end