class Usuario < ActiveRecord::Base
  has_many :recados

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nome, :papel, :email, :password, :password_confirmation, :remember_me

  validates :papel, inclusion: { in: %w(admin moderador usuario) }
  validates :nome, presence: true

  def admin?
    self.papel == 'admin'
  end
end
