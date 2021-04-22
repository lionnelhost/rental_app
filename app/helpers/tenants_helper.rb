module TenantsHelper
    def tenant_status_class(tenant)
        label_class = ""
    
        case true
          when tenant.active?
            label_class = "badge-success"
          when tenant.inactive?
            label_class = "badge-danger"
          else
            label_class = 'badge-default'
        end
        label_class
    end

    def tenant_paiement_class(paiement)
      label_class = ""
      paiement.solde> 0 ? label_class="text-success" : label_class="text-danger"

      label_class
    end

    def tenant_paiement_icon(paiement)
      label_icon = ""
      paiement.solde> 0 ? label_icon="fa-arrow-up" : label_icon="fa-arrow-down"
      
      label_icon
    end
end
