# frozen_string_literal: true

module Admins
  class SignInService
    include Interactor::Organizer

    organize AuthenticationService, ::Shared::Authentications::GenerateTokenService
  end
end
