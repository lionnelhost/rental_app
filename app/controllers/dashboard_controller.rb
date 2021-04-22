class DashboardController < ApplicationController
    def index
      @tenants = Tenant.all.count
      @apartments = Apartment.all.count
      @paiements = Paiement.sum(:amount)

      @paiements_data = Paiement.select(:amount, :period)
                                    .where('period > ?', Date.today.beginning_of_month - 2.year)
                                    .order('period DESC')
                                    .group_by { |t| t.period.strftime("%b %Y")}
      @paiement_labels= []
      @paiement_values = []
      get_label_and_values(@paiements_data, @paiement_labels, @paiement_values)

      if request.xhr?
        respond_to do |format|
          format.html
          format.json {
            render json: {
              paiements_data: {
                labels: @paiement_labels,
                values: @paiement_values
              }
            }
          }
        end 
      end

    end

    private 

    def get_label_and_values(data, labels, values)
      data.reverse_each do |key, value|
        labels.push(key)
        values.push((value[0].amount/1000))
      end
    end
end