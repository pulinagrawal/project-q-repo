module SessionsHelper
 def sign_in(profile)
    cookies.permanent[:remember_token] = profile.remember_token
    self.current_profile = profile
    session[:profile_id] = profile.id
  end

  def current_profile=(profile)
    @current_profile = profile
  end

  def current_profile
    @current_profile ||= Profile.find_by_remember_token(cookies[:remember_token])
  end

  def sign_out
    session.delete(:profile_id)
    self.current_profile = nil
    cookies.delete(:remember_token)
  end

end
