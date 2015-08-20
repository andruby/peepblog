defmodule Peepblog.PageController do
  use Peepblog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
