class User::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:nama, :email, :password, :password_confirmation,
      :alamat)
  end

  def account_update
    default_params.permit(:nama, :email, :password, :password_confirmation,
      :current_password, :alamat)
  end
end
