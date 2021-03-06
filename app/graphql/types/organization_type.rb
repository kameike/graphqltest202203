# frozen_string_literal: true

module Types
  class OrganizationType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :parent, OrganizationType
    field :children, [OrganizationType]
  end
end
