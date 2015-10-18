class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :author, class_name: "User"
  validates :name, :description, presence: true, length: { minimum: 10 }
  validates :description, length: { maximum: 1000 }

  mount_uploader :attachment, AttachmentUploader
end
