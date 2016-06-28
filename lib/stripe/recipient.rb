module Stripe
  class Recipient < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::Update
    include Stripe::APIOperations::Delete
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::List

    def transfers
      Transfer.all({ :recipient => id }, @api_key)
    end
  end
end
