defmodule Demo.PageController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index"
  end

  def getdemo(conn, _params) do
    conn
    |> put_layout("application")
    |> render "demo"
  end

  def postdemo(conn, %{"file" => file}) do
    {:ok, cdyr} = File.cwd()
    File.copy(file.path, cdyr <> "/priv/static/" <> file.filename)
    redirect conn, "/"
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
