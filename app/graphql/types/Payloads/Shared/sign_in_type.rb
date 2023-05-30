module Types
  module Payloads
    module Shared
      class SignInType < Types::BaseObject
        description "SharedSignInType"
        graphql_name "SharedSignInType"

        field :token, String, null: true, description: "Authencity Token"
      end
    end
  end
end
