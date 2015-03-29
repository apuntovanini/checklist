class Item < ActiveRecord::Base
  # Associations
  belongs_to :list
  belongs_to :user

  # Validations
  validates :body, :user_id, presence: true

  # Instance Methods
  def merge!
    self.merged_at = Time.now
    self.save
  end
end
