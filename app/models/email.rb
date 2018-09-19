class Email < ApplicationRecord
belong_to:employees

validates :email_id, presence: true
validates :e_id, presence: true
validates :email, presence: true
validates :email_type, presence: true

end
