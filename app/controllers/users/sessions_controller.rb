class Users::SessionsController < Devise::SessionsController
  # before_action :authenticate_user!

  # GET /resource/sign_in
  def new
    # super putangina nitong super na to
    render("customers/login.html.erb")
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
