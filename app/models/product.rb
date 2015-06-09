class Product < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  has_attached_file :image,
    :styles => {
      :medium => "300x300#",
      :thumb => "100x100#" },
    :default_url => "missing_product_:style.jpg",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :dropbox_options => {...}
  validates_attachment_content_type :image,
    :content_type => /\Aimage\/.*\Z/

  private
    # Ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line items present.')
        return false
      end
    end
end

# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  price              :decimal(, )
#  quantity           :integer
#  description        :text
#  brand              :string
#  rating             :integer
#  category_id        :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
