class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :originator, :amount, :transaction_type
end
