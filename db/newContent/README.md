## 行いたい事　-> posts/mewというURLをアクセスできる様にする。
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
