class User
  attr_accessor :name, :address, :email

  def profile
    "#{name} (#{address})"
  end
end

## set した値が使用出来る。