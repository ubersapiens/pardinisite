class User < ActiveRecord::Base
  authenticates_with_sorcery!

  enum role: [:default, :admin]
  after_initialize :set_default_role, if: :new_record?

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true

  private

  def set_default_role
    self.role ||= :default
  end
end