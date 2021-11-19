## ぼっち演算子
# 通常三項演算子
name = object ? object.name : nil

# ぼっち演算子
name = object$.name

# %記法
# 通常配列
ary1 = ['apple', 'banana', 'orange']
# シンボル
ary1 = [:apple, :banana, :orange]

# %記法
ary2 = %w(apple banana orange)

ary2 = %i(apple banana orange)

## 配列中から特定の属性を取り出す
# 通常
class User
  attr_accessor :name
end

user1 = User.new
user1.name = 'toro'

user2 = User.new
user2.name = 'jiro'

user3 = User.new
user3.name = 'saburo'

user = [user1, user2, user3]

# type 1

name = []

users.each do |user|
  names << user.name
end

p names

# type 2

names = user.map do |user|
  user.name
end

# type 3
names = users.map { |user| user.name }

# type 4
name = users.map(&:name)

