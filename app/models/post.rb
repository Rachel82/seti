class Post < ApplicationRecord
	belongs_to :category
	  has_attached_file :image, styles: { large: "900x900>", medium: "300x300>", thumb: "150x150#" }, default_url: "/images/:style/missing.png"
	  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

	def self.search(search_term)
		like_string = Rails.env.production? ? "ilike" : "LIKE"
		Post.where("content #{like_string} ?", "%#{search_term}%")
	end

end
