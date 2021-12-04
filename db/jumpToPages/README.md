### 行いたい事->いずれかのカードをクリック時そのコンテンツの内容へページ遷移

```ruby
<%= @posts.each do |post|%>
  <div class="post-item">
    <%= link_to(post.content, "/posts/#{post.id}")%>
  </div>
<% end %>
```
