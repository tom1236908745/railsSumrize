### orderメソッド

このメソッドにより、一覧を並び替えることができる。
具体的には```order(カラム名: 並び替えの順序)```(並び替えの順序は```:asc, :desc```のどちらかを使用する。)
```ruby
def index
  @post = Post.all.order(created_at: :desc)
end
```
