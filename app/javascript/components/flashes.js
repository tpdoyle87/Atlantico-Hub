const body = document.querySelector("body")
const alert = document.querySelector(".alert")


const removeAlert = () => {
  setTimeout(function(){
    body.removeChild(alert);
  }, 3000);
}

export { removeAlert };
