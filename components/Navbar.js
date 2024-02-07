export default function Navbar(active_page){
    let _nav = document.querySelector('.Nav_bar_template');
    _nav.innerHTML = `<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><div class="feature-icon d-inline-flex align-items-center justify-content-center  fs-2  mx-2 ">
        <img src="./Images/sggs2.png" alt="logo" height="30" class="pt-1">
      </div>SGGSIE&T</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link index" href="index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link Result" href="Result.html">Result</a>
          </li>
          <li class="nav-item">
            <a class="nav-link Signin" href="Signin.html">Sign in</a>
          </li>
          <li class="nav-item">
            <a class="nav-link Register" href="Register.html">Register</a>
          </li>
          <li class="nav-item">
            <a class="nav-link Contact" href="#contact">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link About" href="#about">About</a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>`;
  document.querySelector(`.${active_page}`).classList.add('active');
}


