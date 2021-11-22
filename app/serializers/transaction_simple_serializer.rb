class TransactionSimpleSerializer < ActiveModel::Serializer
  attributes :id, :originator, :transaction_type
end
