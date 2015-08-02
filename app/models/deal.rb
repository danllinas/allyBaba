class Deal < ActiveRecord::Base
  belongs_to :organizer, foreign_key: "user_id", class_name: "User"
  has_attached_file :image, styles: { :medium => "500x500" }
  validates :image, :attachment_content_type => { :content_type => ['image/png', 'image/jpg', 'image/jpeg', 'image/gif']}
  validates :url, presence: true
  monetize :wholesale_price_cents
  monetize :retail_price_cents
  has_many :orders
  accepts_nested_attributes_for :orders

  def self.scrape
    response = HTTParty.get("http://www.alibaba.com/product-detail/Define-Major-Minor-Value-cc2541-iBeacon_60216539191.html?spm=a...")
    dom = Nokogiri::HTML(response.body)
  end

end
