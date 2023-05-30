module Customers
  class AuthenticationService
    include Interactor

    def call
      user = ::Customer.find_by(email: context.email)

      return context.fail!(message: I18n.t('device.failure.not_found_account',
                                           authentication_keys: "Email")) unless user

      unless user.valid_password?(context.password)
        return context.fail!(
          message: I18n.t('device.failure.not_found_database', authentication_keys: "Password")
        )
      end

      context.user = user
    end
  end
end
