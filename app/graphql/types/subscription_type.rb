# frozen_string_literal: true

module Types
  class SubscriptionType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :delivery_cadence, String
    field :customer_id, Integer, null: false
    field :tea_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
