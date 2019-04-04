module ApplicationHelper
  def setting(name)
  	Setting.where(identifier: name).first.try(:value)
  end
end
