# == Schema Information
#
# Table name: recipe_box_items
#
#  id         :bigint           not null, primary key
#  recipe_id  :bigint           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class RecipeBoxItem < ApplicationRecord
  belongs_to :recipe
  belongs_to :user
  has_many :likes, dependent: :destroy
end
