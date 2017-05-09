module Web::Controllers::Home
  class Index
    include Web::Action

    def call(_)
      redirect_to routes.login_path unless session[:user]
    end
  end
end
