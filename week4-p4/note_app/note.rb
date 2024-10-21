require 'securerandom'

class Note
  attr_reader :id
  
  def initialize(text)
    @id = SecureRandom.uuid
    @text = text
    @date = Time.now
  end

  def to_s
    "Date: #{@date.strftime("%Y-%m-%d %H:%M:%S")} \nNote: #@text" 
  end

  def set_text(text) 
    @text = text
    @date = Time.now
  end
end