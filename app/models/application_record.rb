class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.human_enum_name(enum_name, enum_value)
    if enum_value
      I18n.t("activerecord.attributes.#{model_name.i18n_key}.#{enum_name.to_s.pluralize}.#{enum_value}")
    else
      "N/A"
    end
  end
end
