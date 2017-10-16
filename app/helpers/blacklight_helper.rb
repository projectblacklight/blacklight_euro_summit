module BlacklightHelper
  include Blacklight::BlacklightHelperBehavior

  # Override Blacklight
  def url_for_document(document, options = {})
    { lang:  document.fetch(:language_facet),
      controller: :catalog,
      action: :show,
      id: document.id }
  end
end
