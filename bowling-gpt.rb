class BowlingScorer
  attr_reader :score

  def initialize
    @score = 0
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def calculate_score
    frame_index = 0
    10.times do
      if strike?(frame_index)
        @score += 10 + strike_bonus(frame_index)
        frame_index += 1
      elsif spare?(frame_index)
        @score += 10 + spare_bonus(frame_index)
        frame_index += 2
      else
        @score += frame_score(frame_index)
        frame_index += 2
      end
    end
  end

  private

  def strike?(frame_index)
    @rolls[frame_index] == 10
  end

  def spare?(frame_index)
    frame_score(frame_index) == 10
  end

  def frame_score(frame_index)
    @rolls[frame_index] + @rolls[frame_index + 1]
  end

  def strike_bonus(frame_index)
    @rolls[frame_index + 1] + @rolls[frame_index + 2]
  end

  def spare_bonus(frame_index)
    @rolls[frame_index + 2]
  end
end

p roll(10)
p score
