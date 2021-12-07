## 行いたい事１　-> posts/mewというURLをアクセスできる様にする。
いつものルーティング、アクション、ビューを追加する。

```ruby

# router.rb

...
get "posts/new" => "posts#new"
...


# controller.rb
...
class PostsController < ApplicationController
  def new
  end
end
...

# html.erb
...

```
## 行いたい事２ -> posts/create　(url)を通して、フォームからデータを送信して、保存する。
htmlのフォームの投稿ボタンを押すと、rails側に投稿データが送信される様にする。
具体的にはアクションとそれに対応するurlを使用する。

今までとは違い、データベースに変更を加え、ルーティングを行う際、getでは無くpostを使用する。

```ruby
# 例
post "potss/create" => "posts#create"
```

html要素ではform_tagメソッドを使用する。このメソッドを使用すると、フォームに入力されたデータを送信する事ができる。``` form_tag(送信先のURL)do```で送信先のurlを指定する。これで、```<input>```のボタンを押した時に指定されたデータが送信される。

```html.erb
<%= form_tag("/posts/create") do %>
  <textarea></textrea>
  <input type="submit" value="投稿">
<% end %>
```

## 行いたい事３ -> 投稿ボタンを押した時に別のページに遷移
```ruby
def new
  redirect_to("/post/new") // url
end

```

# 行いたい事4 -> 
1. 投稿がアクションに送信される様にする
2. 送信された内容を受け取り保存する


htmlファイルのname属性を指定すると入力データを送信出来る様になり、name属性の値をキーとしたハッシュ値がrail側に送られる

name属性を指定したフォームに入力されたデータをコントローラのアクション内で受け取る事が出来る様になる。また、フォームのデータは、変数paramsで受け取る事ができる。(name属性に設定した文字列をキーとしたハッシュになっている。)
```ruby
parama[:content] // の形で受け取ることが出来る。

def create
  @post = Post.new(content: params[:content])
  @post.save
  
end
```


