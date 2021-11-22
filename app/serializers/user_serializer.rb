class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birthday, :ssn, :address_one, :address_two, :city, :state, :zip, :created_at
  has_many :accounts, serializer: AccountSimpleSerializer
end
