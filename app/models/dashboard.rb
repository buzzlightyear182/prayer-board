class Dashboard

  def initialize user
    @user = user
  end

  def new_prayer
    Prayer.new
  end

  def prayers status
    @user.prayers.where(answered: status)
  end

end
