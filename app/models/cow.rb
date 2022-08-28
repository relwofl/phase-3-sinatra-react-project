class Cow < ActiveRecord::Base
# has_many :calves, class_name: "Cow", foreign_key: "calf_id"
# belongs_to :parent_cow, class_name: "Cow"

has_many :calves, class_name: "Cow", foreign_key: "calf_id"
belongs_to :mother, class_name: "Cow", optional: true
belongs_to :farm_field
end