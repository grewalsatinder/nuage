require 'bcrypt'

class User
  include Mongoid::Document
  include Mongoid::Slug
  
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String
  #field :favorite_number, type: Integer #when custom validators 

  # conformation (virtual fields)
  attr_accessor :email_confirmation
  attr :password      # ensure this replaces the existing attr_reader
  attr_accessor :password_confirmation
  # relationship
  has_many :incidents
  accepts_nested_attributes_for :incidents


 
 # Example of general validation
  validates_presence_of :password, :messages => 'Please -- Enter an email!'
  validates_presence_of :password
  validates_length_of :password, :minimum => 5
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates_confirmation_of :email
  validates_confirmation_of :password

  # Example of custom validation
   #validates :favorite_number, presence: true
   #validates_each :favorite_number do |record, attr, value|
     #record.errors.add attr, 'wrong favorite number.' if value != 5
   #validates :terms_of_service, acceptance: true
  #end



 # password SETTER
def password=(new_password)
    self[:password] = new_password
    self.password_digest = BCrypt::Password.create(new_password)
end
# password GETTER
def password
    return self[:password]
end

  def authenticate(test_password)
    if test_password && BCrypt::Password.new(self.password_digest) == test_password
      self
    else
      false
    end
  end


end