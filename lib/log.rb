class LOG

  def self.add(level, message)
    local(level, message)
  end

  private

  def self.local(level, message)
    if defined? Rails.logger
      Rails.logger.send(level, message)
    else
      p "#{level} || #{message}"
    end
  end

end
