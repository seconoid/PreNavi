require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  def setup
    @stundet = Student.new(name: "Akito", s_class: "IH13A296", s_code: 40595, s_no: 21, password: "mogemoge")
  end
end
