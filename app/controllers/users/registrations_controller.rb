class Users::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]
  before_action :configure_permitted_parameters, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    super
    User.create(create_params)
    redirect_to controller: :prototypes, action: :index
    # -binding.pry
  end

  # GET /resource/edit
  def edit
    super
    -binding.pry
  end

  # PUT /resource
  def update
    super
    User.update
    # -binding.pry
    redirect_to controller: :prototypes, action: :index
  end

  private
  def create_params
    params.require(:user).permit(:nickname, :profile, :works, :avatar)
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def configure_permitted_parameters
    # devise_parameter_sanitizer.for(:sign_up).push(:nickname, :profile, :works)
    devise_parameter_sanitizer.for(:account_update).push(:nickname, :profile, :works, :avatar)
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up).push(:nickname, :profile, :works)
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
