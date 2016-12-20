class Domain < ApplicationRecord
  has_many :rankings
  belongs_to :user
  validates :name, presence: true
  validate :allow_three_for_user

  def allow_three_for_user
    if Domain.where(user_id: self.user_id).count > 2
      errors.add(:name, "allow only three")
    end
  end

end
