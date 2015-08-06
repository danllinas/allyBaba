class Deal < ActiveRecord::Base

  belongs_to :organizer, foreign_key: "user_id", class_name: "User"
  has_many   :orders, dependent: :destroy
  has_many   :buyers, through: :orders

  accepts_nested_attributes_for :orders

  validates         :url, presence: true
  validates         :image, attachment_content_type:
                    { content_type: ['image/png', 'image/jpg', 'image/jpeg', 'image/gif']}
  has_attached_file :image, styles: { :medium => "500x500" }

  monetize :wholesale_price_cents
  monetize :retail_price_cents

  require 'open-uri'

  def self.search(params)
    url = params.split("#")[0].to_s
    response = HTTParty.get(url)
    dom = Nokogiri::HTML(response.body)
  end

  def self.image_from_url(url)
    self.image = URI.parse(url)
  end

end

end
