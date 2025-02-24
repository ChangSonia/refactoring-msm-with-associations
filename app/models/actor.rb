# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  validates(:name, presence: true)
  has_many(:character, class_name: "Character", foreign_key: "actor_id", primary_key: "id")

  has_many :filmography, through: :character, source: :movie
  
end
