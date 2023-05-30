module Mutations
  module Admins
    class Base < BaseMutation
      description 'MutationsAdminsBase'

      def ready?(**_args)
        authenticate!(:admin)
      end
    end
  end
end
