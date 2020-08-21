const showDropdownContent = () => {
  const dropdownButton = document.getElementById("drop-button");
  const dropdownList = document.getElementById("myDropdown");
  if (dropdownButton) {
    dropdownButton.addEventListener('click', (event) => {
      event.preventDefault();
        dropdownList.classList.toggle("show");
    });
   }
  
}

// const hideDropdownOutClick = () => {
//   const dropdownButton = document.getElementById("drop-button");
//   const dropdownList = document.getElementById("myDropdown");
//   window.addEventListener('click', (event) => {
//     if (!event.target.matches(dropdownButton) {
//       event.preventDefault();
//       if (dropdownList.classList.contains('show')) {
//         dropdownList.classList.remove('show');
//       }
//     }
//   });
// }

const showNotificationContent = () => {
  const button = document.getElementById("noti-drop");
  const notiList = document.getElementById("notiDropDown")
  if (button) {
    button.addEventListener('click', (event) => {
      event.preventDefault();
      notiList.classList.toggle("show");
    });
  }
}

export { showDropdownContent };
export { showNotificationContent};