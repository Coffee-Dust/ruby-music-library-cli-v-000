module Common


end


module Common::ClassMethods

  def create(name)
    self.new(name).tap { |instance|
      instance.save
    }
  end

  def all
    self.class_variable_get("@@all")
  end

  def destroy_all
    self.all.clear
  end
end#CommonClassMethods

module Common::InstanceMethods
  def initialize(name)
    @name = name
  end

  def save
    self.class.all << self
  end
end
