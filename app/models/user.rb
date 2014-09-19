require 'bcrypt'

class User
  include Mongoid::Document
  include Mongoid::Slug
  
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String

  has_many :incidents
  accepts_nested_attributes_for :incidents


  attr_reader :password
  # # Example of general validation
  # validates_presence_of :password, :messages => 'Please -- Enter an email!'
  # validates :email, presence: true, uniqueness: true
  # validates :email, presence: true

  # # Example of custom validation
  # validates_each :email do |record, attr, value|
  #   record.errors.add attr, 'wrong  email.' if value != 5
  # end


  def password=(new_password)
    self.password_digest = BCrypt::Password.create(new_password)
  end

  def authenticate(test_password)
    if test_password && BCrypt::Password.new(self.password_digest) == test_password
      self
    else
      false
    end
  end


end