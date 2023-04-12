require_relative './base_decorator'

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    return @nameable.correct_name[0, 9] if @nameable.correct_name.length > 10

    @nameable.correct_name
  end
end
