class Incident
  include Mongoid::Document
  field :number, type: Integer
  field :caller, type: String
  field :location, type: String
  field :category, type: String
  field :subcategory, type: String
  field :email, type: String
  field :shortdescription, type: String
  field :openedby, type: String
  field :configitem, type: String
  field :impact, type: Integer
  field :urgency, type: Integer
  field :priority, type: Integer
  field :state, type: String
end
