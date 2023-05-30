module Mutations
  module Customers
    class Base < BaseMutation
      description "MutationsCustomersBase"

      def ready?(**_args)
        authenticate!(:customer)
      end
    end
  end
end
