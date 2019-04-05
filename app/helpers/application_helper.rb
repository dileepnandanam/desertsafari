module ApplicationHelper
  def setting(name)
  	Setting.where(identifier: name).first.try(:value).to_s
  end
end
