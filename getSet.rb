class User
  def name=(name)
    @name = name
  end

  def name
    @name
  end
end

## 便利

class User
  attr_accessor :name
end

## get -> attr_reader
## set -> attr_writter
