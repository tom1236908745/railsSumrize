## 編集
投稿を編集するには、編集したい投稿を取得して、その投稿のcontentの値を上書きした後に、保存する。

```ruby
post = Post.find_by(id: 1)

post.content = "Rails"

post.save
```

idが１の投稿が ```Rails```に変わる。
