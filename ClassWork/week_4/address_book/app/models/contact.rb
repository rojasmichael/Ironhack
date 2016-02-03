class Contact < ActiveRecord::Base
	 validates :name, :phone, :address, presence: true
	 validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
