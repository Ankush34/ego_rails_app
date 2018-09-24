module BSON
  class ObjectId
    def as_json(*args)
      to_s
    end
  end
end

if defined?(Rails::Console)
  def show_mongo
    if Mongo::Logger.logger == Rails.logger
      Mongo::Logger.logger = Logger.new($stdout)
      true
    else
      Mongo::Logger.logger = Rails.logger
      false
    end
  end
  alias :show_moped :show_mongo
end
