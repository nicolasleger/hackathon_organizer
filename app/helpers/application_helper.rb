module ApplicationHelper
  def current_user
    @current_user
  end

  def current_user_admin_power
    current_user.is_admin && params[:admin] == "power"
  end

  def human_readable_date(date)
    date.strftime("%d/%b/%Y %H:%M:%S")
  end

  def project_list_filter_class(filter_name=nil)
    return "btn-primary" if params[:filter] == filter_name
    "btn-default"
  end

  def project_list_order_class(order_name=nil)
    return "btn-primary" if params[:order] == order_name
    "btn-default"
  end

  def projects_filters_params
    {filter: params[:filter], order: params[:order], search: params[:search]}.compact
  end
end
