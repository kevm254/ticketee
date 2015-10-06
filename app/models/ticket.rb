class Ticket < ActiveRecord::Base
  belongs_to :project
  validates :name, :description, presence: true, length: { minimum: 10 }
  validates :description, length: { maximum: 1000 }
end
