module ExecutionError
  extend ActiveSupport::Concern

  private

  def execution_error(message: nil, status: :unprocessable_entity, code: 422, errors: nil)
    message = message.presence || 'Validation Error'
    Graphql::ExecutionError.new(message, options: { status:, code: code || 422, errors: })
  end
end
