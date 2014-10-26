class Idea < ActiveRecord::Base
  belongs_to :user

  validates :idea1, presence: true, length: {  maximum: 120  }
  validates :idea2, presence: true, length: {  maximum: 120  }
  validates :idea3, presence: true, length: {  maximum: 120  }
  validates :idea4, presence: true, length: {  maximum: 120  }
  validates :idea5, presence: true, length: {  maximum: 120  }
  validates :idea6, presence: true, length: {  maximum: 120  }
  validates :idea7, presence: true, length: {  maximum: 120  }
  validates :idea8, presence: true, length: {  maximum: 120  }
  validates :idea9, presence: true, length: {  maximum: 120  }
  validates :idea10, presence: true, length: {  maximum: 120  }

  scope :today, lambda { where('DATE(created_at) = ?', Date.today)}
  scope :featured, lambda { where(featured: true) }
end
