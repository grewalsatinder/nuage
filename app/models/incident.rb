class Incident
  include Mongoid::Document
  
  
  belongs_to :user


  field :name, type: String
  field :number, type: Integer
  field :caller, type: String
  field :location, type: String
  field :category, type: String
  field :subcategory, type: String
  field :email, type: String
  field :shortdescription, type: String
  field :opened, type: String
  field :openedby, type: String
  field :config_item, type: String
  field :impact, type: Integer
  field :urgency, type: Integer
  field :priority, type: Integer
  field :state, type: String
  field :assignment_group , type: String
  field :assigned_to, type: String
  field :isactive, type: String
  field :contact_type, type: String
end
