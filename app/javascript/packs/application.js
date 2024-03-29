// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap'
import { dashboardChart } from '../pages/dashboard'
import { showErrorPage } from '../pages/errors'
import { paginatePaiements } from '../pages/paiement'
import { paginateTenantPaiements, paginateTenants } from '../pages/tenant'
import { initFlatpickr } from '../plugins/flatpiker'
import { displayDeleteModal } from './utils'
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

require("flatpickr");
import 'flatpickr/dist/themes/light.css';


require("chart.js")
require("Chart.extension.js")
require("jquery-scrollLock.min.js")
require("jquery.scrollbar.min.js")
require("argon.js")

displayDeleteModal();
initFlatpickr();
paginateTenants();
paginatePaiements();
dashboardChart();
paginateTenantPaiements();
showErrorPage();


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
