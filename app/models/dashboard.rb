class Dashboard

  def initialize user
    @user = user
  end

  def new_prayer
    Prayer.new
  end

end
