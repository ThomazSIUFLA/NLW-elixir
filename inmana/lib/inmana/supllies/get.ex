defmodule Inmana.Supplies.Get do
  alias Inmana.{Supply, Repo}

  def call(uuid) do
    case Repo.get(Supply, uuid) do
      nil -> {:error, %{result: "Não existe suprimento com esse código", status: :not_found}}
      supply -> {:ok, supply}
    end
  end
end
