class User < ApplicationRecord
  has_many :events_created, class_name: 'Event', :foreign_key => 'creator_id'
  has_and_belongs_to_many :events_attended, class_name: 'Event'
end
