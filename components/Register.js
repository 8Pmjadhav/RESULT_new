let wp = `<div class="alert alert-success" role="alert">Account Registerd , Successfuly !</div>`;
let alertbox = document.querySelector(".alertbox");

let submitbtn = document.querySelector(".submit");
submitbtn.addEventListener("click", (event) => {
  event.preventDefault();
  let register = document.getElementById("register_form");
  const user_info = {
    username: register.elements["username"].value,
    password: register.elements["password"].value,
  };
  console.log(user_info);
  fetch("./backend/register.php", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams(user_info),
  })
    .then((response) => response.json())
    .then((data) => {
      //console.log(data);
      if (data.flag) {
        console.log("Success");
        alertbox.innerHTML = wp;
      } else {
        alert("Cannot create account");
      }
    })
    .catch((error) => console.error("Error:", error));
});
