class UserAuthenticator
  class AuthenticationError < StandardError; end

  attr_reader :user

  def initalize(code)

  end

  def perform
    raise AuthenticationError
  end
end