class SayNumberController < ActionController::Base
  def say_number
    @number = params[:number] || nil
    @sentence = @number.present? ? convert(@number) : nil
  end

  private

  def convert(number)
    ::Services::NumberToSentence.new.convert_to_sentence(number.to_i)
  end
end