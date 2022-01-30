defmodule ProtocolsWeb.PageController do
  use ProtocolsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
