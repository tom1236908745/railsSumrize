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
