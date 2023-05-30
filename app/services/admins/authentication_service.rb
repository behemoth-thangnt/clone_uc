# frozen_string_literal: true

module Admins
  class AuthenticationService
    include Interactor

    def call
      user = ::Admin.find_by(email: context.email)
      return context.fail!(message: 'Unauthorizised', authentication_keys: 'Email') unless user

      unless user.valid_password?(context.password)
        return context.fail!(message: 'Invalid password',
                             authentication_keys: 'Password')
      end

      context.user = user
    end
  end
end
