module Admins
  class AuthenticationService
    include Interactor

    def call
      user = ::Admin.find_by(email: context.email)

      return context.fail!(message: 'Unauthorizised') unless user

      return context.fail!(message: 'Invalid password') unless user.valid_password?(context.password)

      context.user
    end
  end
end
