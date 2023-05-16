class PasswordsController < Devise::PasswordsController
  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)
    yield resource if block_given?

    if successfully_sent?(resource)
      redirect_to new_user_session_path, notice: 'You will receive an email with instructions on how to reset your password.'
    else
      respond_with(resource)
    end
  end
end
