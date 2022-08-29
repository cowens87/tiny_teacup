# frozen_string_literal: true

module Types
  class TeaType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :price, Float
    field :brew_time, Float
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
