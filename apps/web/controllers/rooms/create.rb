module Web::Controllers::Rooms
  class Create
    include Web::Action

    def call(params)
      if params[:id]
        redirect_to routes.path(:room, id: params[:id])
      else
        redirect_to routes.home_path
      end
    end
  end
end
