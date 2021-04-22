let base_path = "http://localhost:3000"

const paginateTenants = () => {
    $(document).on('turbolinks:load', function(){
        if (window.location.pathname == "/tenants"){ 
            $(document).on('change', '#tenant_per_page_select', function () {
                let per_page = $(this).find(":selected").val()
                window.location.href = `${base_path}/tenants?per_page=${per_page}`;
                
            });
        }
    });
}

const paginateTenantPaiements = () => {
    $(document).on('turbolinks:load', function(){
        let tenant_id = window.location.pathname.replace('/tenants/','');
        if (window.location.pathname == `/tenants/${tenant_id}`){ 
            $(document).on('change', '#tenant_paiement_per_page_select', function () {
                let per_page = $(this).find(":selected").val()
                window.location.href = `${base_path}/tenants/${tenant_id}?per_page=${per_page}`;
            });
        }
    });
}

export { paginateTenants, paginateTenantPaiements }