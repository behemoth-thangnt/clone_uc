module Admins
  class SignInService
    include Interactor::Organizer

    organize AuthenticationService, ::Shared::Authentications::GenerateTokenService
  end
end
