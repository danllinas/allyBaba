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

  require 'cgi'
  require 'pp'

  def self.search(params)
    @api_base_url = 'https://api.import.io/store/data/03452787-2b70-4564-961e-26c6146e25f5/_query?_user=faa74279-e1a5-4f76-8252-a9d747f8ffb0&_apikey=faa74279e1a54f768252a9d747f8ffb0da8ff20285de1674a3de59a94720f64ba8456386c987145907443b283906df9a0e9bf93c1ea76188a975011966429f99c34cbe79c48cf985d2e31c913ac01457&input/webpage/url='
    url = params.split('?')[0].to_s
    

  end


end
