require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  def setup
    @stundet = Student.new(name: "Akito", s_class: "IT", s_code: "IH1329627", s_no: 40595)
  end
end
