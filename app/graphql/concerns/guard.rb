module Guard
  extend ActiveSupport::Concern

  private

  def authenticate!(role)
    authenticated = case role
                    when :admin
                      admin?
                    when :customer
                      customer?
                    when :public
                      true
                    else
                      false
                    end

    raise UnauthenticatedError unless anthenticated

    true
  end

  def admin?
    Current.user && Current.user.instance_of(Admin)
  end

  def customer?
    Current.user && Current.user.instance_of(Customer)
  end
end
