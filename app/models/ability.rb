# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    user_nivel = user.acesso_id
    # perfil = Perfil.find_by(:user_id => user.id, equipamento_id: nil, topico_id: nil)
    # nivel = Acesso.find(perfil.acesso_id)
    # usuario = User.find_by(:acesso_id => acesso.id)

    # puts "\nDados: #{usuario}\n"
    puts "\nDados: #{user_nivel}\n"
    puts user_nivel == 4
    case user_nivel
    when 3
      # Administradores podem gerenciar tudo
      can :manage, :all
    when 4
      # Editores podem criar e editar posts, mas não podem gerenciar usuários
      can :read, Kind
      can :read, Address
      can :read, Contact
      can :read, Phone
      can :read, Home
      can :read, User
    when 1
      # Visualizadores só podem ler
      can :read, Kind
    else
      # Se o nível for desconhecido, nenhuma permissão é concedida
      cannot :manage, :all
    end


    # Define abilities for the user here. For example:
    #
    # return unless user.present?
    # can :read, :all
    # return unless user.admin?
    # can :manage, :all
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
