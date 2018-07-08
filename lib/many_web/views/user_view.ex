defmodule ManyWeb.UserView do
  use ManyWeb, :view

  def existing_records(conn) do
    cond do
      Map.has_key?(conn.assigns, :user) and conn.assigns.user.posts == [] ->
        [%Many.Blog.Post{}]

      Map.has_key?(conn.assigns, :user) and conn.assigns.user.posts != [] ->
        []

      not Map.has_key?(conn.assigns, :user) ->
        [%Many.Blog.Post{}]

      true ->
        []
    end
  end
end
