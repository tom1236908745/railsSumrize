## バリデーション
意味: 不適切なワードを保存しない様にする機能。


### 空かどうかを判定するバリデーション
```ruby
class Post < ApplicationRecord
  validates :検証するカラム名, {presence: true} // 第二引数は空の投稿を防ぐバリデーション
end

``` 

### 文字数制限
```ruby
class Post < ApplicationRecord
  validates :検証するカラム名, {length: {maximum: 文字数}} // lengthを指定
end
```

### 合体
```ruby
class Post < ApplicationRecord
  validates :検証するカラム名, {presence: true, length: {maximum: 文字数}} // lengthを指定
end
```

---

### リダイレクト

上記のまま何もしない場合、保存出来なかった場合、一覧ページにそのまま戻ってしまう。
そこで、保存できない場合、また、投稿ページに戻ってくる様にするという処理を行う。

コントローラ
```ruby
def update
  if @post.save # <- boolean値で返ってくる。
    # 保存出来た場合
    redirect_to("posts/index") # そのまま、一覧
    
  else
    # 保存出来なかった場合
    redirect_to("/posts/#{@post.id}/edit")
  end
end
```
