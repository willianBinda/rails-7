class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_url, notice: 'Você não tem permissão para acessar essa página.' # Ou outra página de sua escolha
    end
end
