module RoomsHelper
  def info_at_position(pos, x, y)
    pos.each do |pos|
      if pos[:x] == x && pos[:y] == y
        return pos
      end
    end
    nil
  end
end
