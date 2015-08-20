defmodule Peepblog.Router do
  use Peepblog.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug PlugCors, [origins: ["localhost:5100"]]
  end

  scope "/", Peepblog do
    pipe_through :api

    resources "/posts", PostController
  end
end
