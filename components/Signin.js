let wp = `<div class="alert alert-warning" role="alert">Wrong password, try again!</div>`;
let wd = `<div class="alert alert-danger" role="alert">Wrong user data!</div>`;

let alertbox = document.querySelector(".alertbox");
let submitbtn = document.querySelector(".submit");
submitbtn.addEventListener("click", (event) => {
  event.preventDefault();
  let signin = document.getElementById("Admin");
  const admin_info = {
    username: signin.elements["username"].value,
    password: signin.elements["password"].value,
  };
  console.log(admin_info);
  fetch("./backend/signin.php", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams(admin_info),
  })
    .then((response) => response.json())
    .then((data) => {
      //console.log(data);
      if (data.flag == 1) {
        console.log("Success");
        window.location.href = "https:www.sggs.ac.in";
      } else if (data.flag == 2) {
        alertbox.innerHTML = wp;
      } else {
        alertbox.innerHTML = wd;
      }
    })
    .catch((error) => console.error("Error:", error));
});
