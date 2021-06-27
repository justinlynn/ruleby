require 'ruleby'

class Success
  attr :status, true
  def initialize(status=nil)
    @status = status
  end
end
