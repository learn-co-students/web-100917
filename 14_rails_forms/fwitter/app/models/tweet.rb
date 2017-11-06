class Tweet < ApplicationRecord
  def text
    self.body
  end

  def text=(arg)
    self.body=(arg)
  end
end
