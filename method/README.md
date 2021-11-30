## メソッド
複数の処理を１つにまとめたもの。
形
```ruby
def something // メソッド名
// 処理
//例
puts "こんにちは"
puts "私の名前はxxxです。"
end
```
メソッドの呼び出し
```ruby
// メソッド名
somethig
```

引数あり
```ruby
def something(name) // メソッド名(引数名)
// 処理
//例
puts "こんにちは"
puts "私の名前は#{name}です。"
end
```
メソッドの呼び出し
```ruby
// メソッド名(引数名)
somethig(name)
```

戻り値あり
```ruby
def add(a, b)
  return a + b
end

//呼び出し

sum = add(1,3)
puts sum
```
