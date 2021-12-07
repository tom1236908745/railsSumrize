URLの:idの部分をコントローラーのアクション内から取得できる。
-> paramsという変数にハッシュとして入っている。
```params[:id]```で取得できる。

```ruby
// ルーティング
get "posts/:id" => "posts#post"

// コントローラ
def show //　アクション名
  @id = params[:id]
end
```
```html
// html.erb内
<%= @id %>
```

### idカラムの値がparams[:id]と等しいデータの取得方法

```ruby
def show
  @post = Post.find_by(id:params[:id])
end

# 上の関数でpostにidカラムがparams[:id]と一致する値を取得出来るので、(@post参照)
<div class="post-item">
  <%= @post.content%>
</div>
```
