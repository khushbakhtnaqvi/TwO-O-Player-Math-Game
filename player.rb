class Player
  attr_accessor :life
  attr_reader :name

  def initialize (name)
    @name = name
    @life = 3
  end

  def eval_answer (result)
    self.life -= 1 unless result
  end

end