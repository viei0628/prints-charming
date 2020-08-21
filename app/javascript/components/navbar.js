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

export { showDropdownContent };