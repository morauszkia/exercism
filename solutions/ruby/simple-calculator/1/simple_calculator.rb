class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError.new("Non number operand.") unless 
      first_operand.is_a?(Integer) && second_operand.is_a?(Integer)
    raise UnsupportedOperation.new() unless ALLOWED_OPERATIONS.include?(operation)
      
    begin
      if operation == "+"
        result = first_operand + second_operand
      elsif operation == "*"
        result = first_operand * second_operand
      elsif operation == "/"
        if second_operand == 0
          raise "Division by zero is not allowed."
        end
        result = first_operand / second_operand        
      end
      "#{first_operand} #{operation} #{second_operand} = #{result}"
    rescue => e
      e.message
    end
  end
end
