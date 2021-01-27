defmodule AnarchyWeb.PageController do
  use AnarchyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
