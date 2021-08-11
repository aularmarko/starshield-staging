//= require active_admin/base
//= require activeadmin_addons/all
$(document).ready(
  function() {
    // Sometimes ActiveAdmin generate the filter container (sidebar) outside active_admin_content and the styles get broken
    const child = document.getElementById('sidebar')
    const parent = document.getElementById('active_admin_content')
    parent.appendChild(child)

    const KitAdminCheckbox = document.getElementById('kitAdminCheckbox')
    const SuperAdmincheckbox = document.getElementById('superAdminCheckbox')
    const Admincheckbox = document.getElementById('adminCheckbox')
    KitAdminCheckbox.addEventListener('change', (event) => {
      if (event.currentTarget.checked) {
        Admincheckbox.checked = true;
      } else {
        SuperAdmincheckbox.checked = false;
      }
    })
    SuperAdmincheckbox.addEventListener('change', (event) => {
      if (event.currentTarget.checked) {
        Admincheckbox.checked = true;
        KitAdminCheckbox.checked = true;
      }
    })
    Admincheckbox.addEventListener('change', (event) => {
      if (!event.currentTarget.checked) {
        SuperAdmincheckbox.checked = false;
        KitAdminCheckbox.checked = false;
      }
    })
  }
);
