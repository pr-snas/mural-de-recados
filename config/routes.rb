MuralDeRecados::Application.routes.draw do
  devise_for :usuarios, skip: [:sessions, :passwords, :registrations]

  devise_scope :usuario do
    # login/logout
    post '/entrar' => 'devise/sessions#create', as: :usuario_session
    delete '/sair' => 'devise/sessions#destroy', as: :destroy_usuario_session
    
    # resetar/trocar senha
    post '/recuperar_senha' => 'devise/passwords#create', as: :usuario_password
    put '/minha_conta/senha/editar' => 'devise/passwords#update'

    # configurações do usuário
    post '/cadastrar' => 'devise/registrations#create', as: :usuario_registration
    put '/minha_conta' => 'devise/registrations#update'
    delete '/minha_conta' => 'devise/registrations#destroy'
  end

  root to: 'home#index'
end
