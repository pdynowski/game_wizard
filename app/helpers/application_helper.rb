module ApplicationHelper

  def remove_user_header?
    return true if ["sessions"].include? params["controller"]
    debugger
    return true if ["users"].include?(params["controller"]) && ["new"].include?(params["action"])
  end
end
