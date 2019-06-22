module ApplicationHelper

  def remove_user_header?
    return true if ["sessions"].include? params["controller"]
    return true if ["users"].include?(params["controller"]) && ["new", "create"].include?(params["action"])
  end
end
