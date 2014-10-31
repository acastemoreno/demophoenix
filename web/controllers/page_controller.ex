defmodule Demo.PageController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index"
  end

  def demo(conn, _params) do
    conn
    |> put_layout(:none)
    |> render "demo"
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
