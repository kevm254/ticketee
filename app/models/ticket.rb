class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :author, class_name: "User"
  belongs_to :state
  has_many :attachments, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, :description, presence: true, length: { minimum: 10 }
  validates :description, length: { maximum: 1000 }
  accepts_nested_attributes_for :attachments, reject_if: :all_blank

end
