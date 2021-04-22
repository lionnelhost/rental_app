const paginatePaiements = () => {
    $(document).on('turbolinks:load', function(){
        if (window.location.pathname == "/paiements"){ 
            $(document).on('change', '#per_page_select', function () {
                let per_page = $(this).find(":selected").val()
                window.location.href = `http://localhost:3000/paiements?per_page=${per_page}`;
                
            });
        }
    });
}

export { paginatePaiements }