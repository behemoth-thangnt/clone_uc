module Customers
  class SignInService
    include Interactor::Organizer

    organize AuthenticationService, ::Shared::Authentications::GenerateTokenService
  end
end
