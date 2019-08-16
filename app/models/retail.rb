# == Schema Information
#
# Table name: retails
#
#  user_id    :integer
#  address1   :string
#  address2   :string
#  suburb     :string
#  postcode   :string
#  phone      :string
#  email      :string
#  website    :string
#  facebook   :string
#  instagram  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Retail < ApplicationRecord
    has_many :bookings
    has_many :customers, :thorough => :bookings
    has_many :services
    has_many :categories, :thorough => :services
end
