module Web::Controllers::Users
  class Create
    include Web::Action

    def call(params)
      if params[:user]
        session[:user] = params[:user]
        cookies['user'] = params[:user]
        redirect_to routes.home_path
      else
        redirect_to routes.login_path
      end
    end
  end
end
