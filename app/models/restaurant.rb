class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :reviews

    has_attached_file :restaurant_img, styles: { restaurant_index: "200x200>", restaurant_show: "400x400>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :restaurant_img, content_type: /\Aimage\/.*\z/
end
