module Stripe
  class Refund < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::Update
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
  end
end
