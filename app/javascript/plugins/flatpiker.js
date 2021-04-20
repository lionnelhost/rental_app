import flatpickr from "flatpickr"

const initFlatpickr = () => {
    document.addEventListener("turbolinks:load", () => {
        $('[data-tooltip-display="true"]').tooltip(),
    
        flatpickr("[class='flatpickr']", {})
        const paiement_period = $('#paiement_period');
        const tenant_date_of_birth = $("#tenant_date_of_birth");

        const currentDate = new Date();
        currentDate.setDate(currentDate.getDate() + 1);

        const flatConfig = {
            allowInput: true,
            dateFormat: "Y-m-d",
            locale: {
            firstDayOfWeek: 1,
            months: {
                shorthand: ["janv", "févr", "mars", "avr", "mai", "juin", "juil", "août", "sept", "oct", "nov", "déc", ],
                longhand: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
            },
            },
            altInput: true,
            altFormat: "F Y",
            disableMobile: "true",
            defaultDate: currentDate
        }

        if (paiement_period) {
            paiement_period.flatpickr(flatConfig);
        }

        if (tenant_date_of_birth){
            tenant_date_of_birth.flatpickr(flatConfig);
        }
            
    });
}

export { initFlatpickr }