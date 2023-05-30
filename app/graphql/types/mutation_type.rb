# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    description "Mutation Type"

    #### Admin
    field :admins_sign_in, mutation: ::Mutations::Admins::Auths::SignIn, description: "Admin Sign In"

    #### Customer
    field :customers_sign_in, mutation: ::Mutations::Customers::Auths::SignIn, description: "Customer Sign In"
  end
end
