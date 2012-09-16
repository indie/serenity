class InfoPagesController < ApplicationController

  def home
      if signed_in?
        @micropost  = current_user.microposts.build
        @feed_items = current_user.feed.paginate(page: params[:page])
      end
    end
  
  def mission
  end

  def community
  end

  def tos
  end

  def privacy
  end

  def contact
  end

  def aa
  end

  def na
  end

  def colophon
  end
end
