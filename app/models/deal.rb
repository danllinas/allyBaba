class Deal < ActiveRecord::Base
  belongs_to :organizer, foreign_key: "user_id", class_name: "User"
  has_attached_file :image, styles: { :medium => "500x500" }
  validates :image, :attachment_content_type => { :content_type => ['image/png', 'image/jpg']}
  monetize :wholesale_price_cents
  monetize :retail_price_cents


  def self.scrape
    response = HTTParty.get("http://www.alibaba.com/product-detail/2015-latest-designer-ladies-padded-jacket_60220234681.html")
    dom = Nokogiri::HTML(response.body)
  end

end
