defmodule TlwndDdmWeb.NavBar do
  use Phoenix.LiveView

  def render(assigns) do
    TlwndDdmWeb.NavBarView.render "index.html", assigns
  end

  def mount(assigns, session, socket) do
    {:ok, assign(socket, isOpen: false)}
  end

  def handle_event("toggle_menu", _, socket) do
    {:noreply, assign(socket, isOpen: !socket.assigns.isOpen)}
  end
end
