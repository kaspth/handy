require 'set'

module Handy
  class Matcher
    def initialize(number)
      @number = number.to_s
      @segments = segment_number

      @golden_threshold = 80
    end

    def golden?
      score >= @golden_threshold
    end

    def score
      result = 0

      result += 20 if @number.size.even?

      result += 15 * even_segments

      result += 30 * recurring_segments
    end

    private
      def segment_number
        @number.split('').each_with_object([ '' ]) do |digit, segments|
          if segments.last.size == 2
            segments << digit
          else
            segments.last << digit
          end
        end
      end

      def even_segments
        @segments.select { |s| s.to_i.even? }.size
      end

      def recurring_segments
        @segments.size - @segments.to_set.size
      end
  end
end