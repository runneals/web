class HomeController < ApplicationController
  skip_before_action :require_login, only: [:show]

  def show
    if current_user != nil
      @news_items = News.where('min_role_view <= ?', current_user.role).order('expire_time ASC').limit(10)
    end
  end
end
