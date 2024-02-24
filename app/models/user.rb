class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  # Role is a string that can be "admin" or "user"
  enum role: { user: 'user', admin: 'admin' }

  # Optionally, set a default role in a callback
  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= 'user'
  end
end
