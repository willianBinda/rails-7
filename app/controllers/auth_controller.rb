class AuthController < ApplicationController
  # skip_before_action :verify_authenticity_token
  # puts "\n\n\nentrou na rota de authenticate\n\n\n"

  # before_action :authenticate_user!
  # puts "\n\n\nentrou na rota de authenticate\n\n\n"

  # before_action :authenticate_user!
  # puts "\n\n\npassou pelo authenticate_user!\n\n\n"

  def authenticate
    # puts "\n\n\nacessou a função de autenticação\n\n\n"

    # user = authenticate_user
    # puts user
    if user_signed_in?
      # puts "--------------"
      # puts "esta logado"
      # puts "--------------"
      head :ok  # Usuário autenticado e é administrador
    else
      # puts "--------------"
      # puts "rejeitado"
      # puts "--------------"
      head :forbidden  # Acesso negado
    end
  end

  # private

  # def authenticate_user
  #   puts "\n\n\nentrou na função privada\n\n\n"
  #   @user = current_user 
  #   puts "Dados do usuário #{user}"
  #   nil
  #   # Autenticação a partir de uma sessão ou token JWT
  #   # if session[:user_id]
  #   #   User.find(session[:user_id])
  #   # else
  #   #   token = request.cookies[:auth_token]
  #   #   decoded_token = JWT.decode(token, Rails.application.secret_key_base, true, algorithm: 'HS256')
  #   #   User.find(decoded_token[0]['user_id'])
  #   # end
  # end
end
