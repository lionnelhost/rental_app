const dashboardChart = () => {

    $(document).on('turbolinks:load', function(){
        if (window.location.pathname == "/" || window.location.pathname == "/dashboard") {
            
            $.ajax({
                url: "/dashboard",
                method: 'GET',
                dataType: 'JSON',
                error: function (xhr, status, error) {
                console.error('AJAX Error: ', status, error);
                },
                success: function (response) {
                    console.log(response);
                    let elemt = document.getElementById("chart-paiements")
                    new Chart(elemt, {
                        label: "last 6 month paiements",
                        type: "line",
                        data: {
                            labels: response.paiements_data.labels,
                            datasets: [
                                {
                                    data: response.paiements_data.values
                                }
                            ]
                        },
                        options: {
                            animation: {
                                duration: 10,
                            },
                            tooltips: {
                                mode: 'label'
                            },
                            scales: {
                                xAxes: [
                                ],
                                yAxes: [],
                            },
                            legend: {display: false}
                        }
                    });
                }
            });
        }
    });
}

export { dashboardChart }