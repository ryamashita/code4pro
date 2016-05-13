class Photo < ActiveRecord::Base
  belongs_to :room

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", small: "150x150", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
