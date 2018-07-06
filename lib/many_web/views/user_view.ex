defmodule ManyWeb.UserView do
  use ManyWeb, :view

  def existing_records(user) do
    if user.posts == [], do: [%Many.Blog.Post{}], else: []
  end
end
