# == Schema Information
#
# Table name: likes
#
#  id                  :bigint           not null, primary key
#  recipe_box_items_id :bigint           not null
#  user_id             :bigint           not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Like < ApplicationRecord
  belongs_to :user
  belongs_to :recipe_box_items, counter_cache: true
end
