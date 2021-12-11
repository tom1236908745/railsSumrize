## フラッシュ

一度だけ表示されて、他のページ遷移後消えるメッセージ。

```ruby
def update
  if @post.save
    flash[:notice] = "表示したい文字列"
    .
    .
    .
end
```
```html
<% if flash[:notice] %>
    <div class="flash">
      <%= flash[:notice] %> # フラッシュメッセージが存在する場合のみ、表示する。
    </div>
<% end %>
```
