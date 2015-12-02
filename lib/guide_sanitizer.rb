class Guide::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:nama, :email, :password, :password_confirmation,
      :alamat, :photo, :telp)
  end

  def account_update
    default_params.permit(:nama, :email, :password, :password_confirmation,
      :current_password, :alamat, :photo, :telp)
  end
end
