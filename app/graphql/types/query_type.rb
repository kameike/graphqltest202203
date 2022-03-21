module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    
    field :hello_world, String, null: false,
      description: "Just show hello"
    def hello_world
      "Hello World!"
    end

    field :root_organizations, [Types::OrganizationType], null: false
    def root_organizations
      return Organization.roots
    end

    field :children, [Types::OrganizationType], null: false do
      argument :parent_id, ID, required: true
    end

    def children(parent_id:) 
      res = Organization.where(id: parent_id).first&.children
      res ? res : []
    end
  end
end
