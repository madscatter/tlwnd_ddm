defmodule TlwndDdmWeb.AccountDropdown do
  use Phoenix.LiveView

  def render(assigns) do
    TlwndDdmWeb.AccountDropdownView.render "index.html", assigns
  end

  def mount(assigns, session, socket) do
    {:ok, assign(socket, isOpen: false)}
  end

  def handle_event("toggle_dd", _, socket) do
    {:noreply, assign(socket, isOpen: !socket.assigns.isOpen)}
  end

  def handle_event("click_outside", _, socket) do
    {:noreply, assign(socket, isOpen: false)}
  end

  def handle_event("keydown", arg = %{"code" => "Escape"}, socket) do
    {:noreply, assign(socket, isOpen: false)}
  end

  def handle_event("keydown", _, socket) do
    {:noreply, socket}
  end


end
