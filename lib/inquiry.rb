class Inquiry < ActiveRecord::Base
  belongs_to :person
  validates_presence_of :name, :email
  validates_format_of :email, :with => /(^([^@\s]+)@((?:[-_a-z0-9]+\.)+[a-z]{2,})$)|(^$)/i, :allow_blank => true
  default_scope :order => "created_at desc"
end

