defmodule Demo.Router do
  use Phoenix.Router

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", Demo.PageController, :index, as: :index
    get "/demo", Demo.PageController, :getdemo, as: :demo
    post "/demo", Demo.PageController, :postdemo, as: :demo
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end
