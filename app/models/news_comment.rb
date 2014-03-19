# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class NewsComment < ActiveRecord::Base
  belongs_to :news
  belongs_to :author, :class_name => 'User'

  validates_presence_of :content
  validates_presence_of :author
  validates_presence_of :news_id

  after_save :reload_news_bar
  after_destroy :reload_news_bar

  def reload_news_bar
    ActionController::Base.new.expire_fragment(News.cache_fragment_name)
  end
end
