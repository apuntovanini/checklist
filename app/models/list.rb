class List < ActiveRecord::Base
  # Associations
  belongs_to :user
  has_many :items
  has_many :downloads
  has_many :clauses

  # Validations
  validates :name, :description, :user_id, presence: true

  # Instance Methods
  def publish!
    self.published_at = Time.now
    self.save
  end
end
