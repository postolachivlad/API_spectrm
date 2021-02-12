class Message < ApplicationRecord
  before_create :set_uuid

  validates :content, presence: true,
                      format: { without: /<.+?>/, message: 'HTML tags not allowed' },
                      length: { maximum: 256, too_long: '256 characters is the maximum allowed' }

  private

  def set_uuid
    self.id = SecureRandom.uuid
  end
end
