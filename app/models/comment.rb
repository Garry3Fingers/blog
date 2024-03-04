class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATUES = %w[public private archived]

  validates :status, inclusion: { in: VALID_STATUES }

  def archived?
    status == 'archived'
  end
end
