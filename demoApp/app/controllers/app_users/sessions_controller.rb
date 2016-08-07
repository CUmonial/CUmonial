class AppUsers::SessionsController < Devise::SessionsController
before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  def new
    super
    p  "00098764================"
  end

  # POST /resource/sign_in
  def create
    p params
    puts "i am in create----------------------"
    super
  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
        user_params.permit(:email,:password)
    end
  end

end
