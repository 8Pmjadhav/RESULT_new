
let submitbutton = document.querySelector(".submit");

submitbutton.addEventListener("click", (event) => {
  event.preventDefault();
  let result_form = document.getElementById("resultform");
  const info = {
    year: result_form.elements["year"].value,
    sem: result_form.elements["sem"].value,
    branch: result_form.elements["branch"].value,
    reg_no: result_form.elements["reg_no"].value,
  };

  //console.log(info);
  fetch("./backend/result_api.php", {
    method: "POST",
    headers: {
      "Content-Type": "application/x-www-form-urlencoded",
    },
    body: new URLSearchParams(info),
  })
    .then((response) => response.json())
    .then((data) => {
      console.log(data);
      if (data.flag) {
        Show_result(data);
      } else {
        alert("Wrong data, Enter correct data ");
      }
    })
    .catch((error) => console.error("Error:", error));
});

function Show_result(data) {
  let result_form = document.querySelector(".result_form");
  console.log(data.subjects);
  let n = Number(data.subjects.No_of_courses) + 1;

  let subject_list = "";
  for (let i = 1; i <= n; i++) {
    if (i == n) {
      let colour = "green";
      if (Number(data.grades[`Sub_${n}`]) < 5) {
        colour = "red";
      }

      subject_list += `<li class="list-group-item" style="color:${colour};font-weight:700;"><strong>${
        data.subjects[`Sub_${i}`]
      }&nbsp;: &nbsp;</strong>&nbsp;${data.grades[`Sub_${i}`]}</li>`;
      break;
    }
    subject_list += `<li class="list-group-item" ><strong>${
      data.subjects[`Sub_${i}`]
    }&nbsp;: &nbsp;</strong>&nbsp;${data.grades[`Sub_${i}`]}</li>`;
  }
  console.log(n, subject_list);
  result_form.innerHTML = `
  <div class="container py-5">
    <h3 class="text-success text-center mb-4">Student Result</h3>
    
    <div class="card">
    <div class="card-body">
        <h5 class="card-title">Student Information</h5>
        
        <!-- Replace these placeholders with actual values from your result -->
        <p class="card-text"><strong>Name:</strong> ${data.info.name}</p>
        <p class="card-text"><strong>Registration Number:</strong> ${data.info.reg_no}</p>
        <p class="card-text"><strong>Year:</strong> ${data.info.year} year</p>
        <p class="card-text"><strong>Semester:</strong> ${data.info.sem} Semester</p>
        <p class="card-text"><strong>Branch:</strong> ${data.info.branch} </p>
    </div>
    </div>

    <div class="subjects card mt-4">
    <div class="card-body">
        <h5 class="card-title">Subjects and Grades</h5>
    
        <!-- Replace these placeholders with actual values from your result -->
        <ul class="subject_list list-group list-group-flush">
        ${subject_list}
        </ul>
    </div>
    </div>
   </div>`;
}
