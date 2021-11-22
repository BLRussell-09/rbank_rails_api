class AccountSimpleSerializer < ActiveModel::Serializer
  attributes :id, :balance, :account_type
end
