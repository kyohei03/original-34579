class Memo < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :way
  belongs_to :pace
  belongs_to :remote
  has_many :comments, dependent: :destroy

  with_options presence: true do
    validates :hospital_name
    validates :hospital_teacher
    validates :record
  end

  with_options numericality: { other_than: 1 } do
    validates :way_id
    validates :pace_id
    validates :remote_id
  end
end
