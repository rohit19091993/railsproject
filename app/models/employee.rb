class Employee < ApplicationRecord

has_many:emails
has_many:phones

validates :e_id, presence: true
validates :name, presence: true
validates :company, presence: true
end
