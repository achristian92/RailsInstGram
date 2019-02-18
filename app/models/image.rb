class Image < ApplicationRecord
  has_attached_file :picture, styles: { medium: "800x800>", thumb: "250x250>" }, default_url: "/images/default.jpg"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  validates :description, presence:true

  belongs_to :user
end
