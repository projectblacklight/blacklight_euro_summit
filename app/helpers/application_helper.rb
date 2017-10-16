module ApplicationHelper
  def helper_method_demo(document:,field:,value:,config:)
    "#{document.first(:author_vern_display)} (#{link_to document.first(:author_display), search_action_url(q: document.first(:author_display), search_field: :author)})".html_safe
  end
end
