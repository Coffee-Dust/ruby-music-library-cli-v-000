module Concerns::CommonClassMethods

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

module Concerns::CommonInstanceMethods


end