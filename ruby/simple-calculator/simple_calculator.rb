class SimpleCalculator
  class UnsupportedOperation < ArgumentError; end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    operands_valid?(first_operand, second_operand)
    supported_operation?(operation)

    result = case operation
             when '+' then (first_operand + second_operand)
             when '/' then (first_operand / second_operand)
             when '*' then (first_operand * second_operand)
             end

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  rescue ZeroDivisionError
    'Division by zero is not allowed.'
  end

  class << self
    private

    def operands_valid?(first_operand, second_operand)
      raise ArgumentError unless (first_operand.to_s.to_i == first_operand) &&
                                 (second_operand.to_s.to_i == second_operand)
    end

    def supported_operation?(operation)
      raise UnsupportedOperation unless ALLOWED_OPERATIONS.include?(operation)
    end
  end
end
