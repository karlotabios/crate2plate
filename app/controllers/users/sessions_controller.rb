class Users::SessionsController < Devise::SessionsController
  before_action :authenticate_user!
  # if you wanna do anything before the controller does something uncomment the before_filter and the function below protected
  # before_filter :configure_sign_in_params

  # GET /resource/sign_in
  def new
    super
  end

  # POST /resource/sign_in
  def create
    # null ang labas ni params[:email] p0ta
    @user = User.find_by_email(params[:email])

    # if !@user.nil?

    #   if @user.account_type == "a"    
    #     redirect_to controller: 'admin/pages', action: 'index'
    #   else
    #     super
    #   end

    # else

      super

    # end
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [])
  # end
end
