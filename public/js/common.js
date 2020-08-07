fetch('/cookie', {
  method: "POST"
}).then(r => r.json())
  .then((res) => {
    if (res.login) {
      const loginBtn = document.querySelectorAll(".navbar-right li a ")[1];
      loginBtn.href = '/logout';
      console.log(loginBtn.href)
      loginBtn.innerHTML = "로그아웃";
      console.log(true)
    } else {
      console.log(false)
    }
  })
