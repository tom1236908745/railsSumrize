## 他の言語でも置き換え可な場合スキップ

# nil
value = nil

value.value?
# => true

value = 0
if value
  # valueが真の時、実行

return if value.nil?　# value が nilなら以降の処理をしない

# if とは反対の unlessが存在する

# これは出力される
puts 'おはようございます' if true

# これは表示されない
puts 'お疲れ様でした' if false

a = [1,2,3]

# 1, 2, 3と順番に出力する
a.each do |element|
  puts element
end

# 上記同様　他言語ライク
for element in a
  puts element
end

# 配列に要素の追加

a = [1,2,3]
a << 4

# ハッシュ
# 内部のデータをキーと対応付けて格納しておくデータ構造

city = { :tokyo => xxxx, :hukushima => yyy, }

# 参照の仕方
city[:tokyo]

