defmodule Peepblog.PostView do
  use Peepblog.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, Peepblog.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, Peepblog.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      body: post.body}
  end
end
