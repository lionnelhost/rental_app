class PhoneNumberValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      regex = /^((70|76|77|78|30|33))([0-9]{3})([0-9]{2})([0-9]{2})$/
      unless value.match?(regex)
        record.errors[attribute] << (options[:message] || "Ce numéro de téléphone n'est pas valide, utilisez le format 77XXXXXXX")
      end
    end
  end