defmodule Memorex do
  @moduledoc """
  Memorex keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def apis(api) do
    case api do
      :playlist ->
        Application.get_env(:memorex, :playlist_api)
    end
  end

  def http_client() do
    Application.get_env(:memorex, :http_client)
  end
end
