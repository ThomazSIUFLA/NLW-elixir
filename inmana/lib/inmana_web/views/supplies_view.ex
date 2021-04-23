defmodule InmanaWeb.SuppliesView do
  use InmanaWeb, :view

  def render("create.json", %{supply: supply}) do
    %{
      message: "Suprimento criado!",
      supply: supply
    }
  end

  def render("show.json", %{supply: supply}), do: %{supply: supply}
end
