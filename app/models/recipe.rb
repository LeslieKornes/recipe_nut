# == Schema Information
#
# Table name: recipes
#
#  id          :bigint           not null, primary key
#  name        :string
#  category    :string
#  description :text
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
class Recipe < ApplicationRecord
  has_many :recipe_box_items
end
