module Web::Controllers::Rooms
  class Show
    include Web::Action

    expose :room_id, :user

    def call(params)
      if session[:user]
        @room_id = params[:id]
        @user = session[:user]
      else
        redirect_to routes.login_path
      end
    end
  end
end
