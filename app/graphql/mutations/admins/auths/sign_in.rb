module Mutations
  module Admins
    module Auths
      class SignIn < Base
        description 'AdminsAuthsSignIn'
        graphql_name 'AdminsAuthsSignIn'

        argument :email, String, required: true, description: 'Email'
        argument :password, String, required: true, description: 'Password'
        argument :remember_me, Boolean, required: false, description: 'Remember Me'

        type ::Types::Payloads::Shared::SignInType
        field :message, String, null: true, description: 'Sign In Message'

        def ready?(**_args)
          true
        end

        def resolve(email:, password:, remember_me:)
          result = ::Admins::SignInService.call(email:, password:, remember_me:)

          return unless result.success?

          if result.success?
            {
              token: result.token,
              message: I18n.t('devise.sessions.signed_in')
            }
          else
            execution_error(message: result.message, status: :unauthorized, code: 401)
          end
        end
      end
    end
  end
end
