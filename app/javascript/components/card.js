const showPrinterPopup = () => {
  const link = document.getElementById('printerCard')
  if (link){
    link.addEventListener('click', (event) => {
      // event.preventDefault();
      // console.log(event.target);
    });
  }
}

export { showPrinterPopup };