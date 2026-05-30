
async function login(){

  const userId = document.getElementById("userId").value;
  const password = document.getElementById("password").value;

  const res = await fetch("http://localhost:5050/login",{
    method:"POST",
    headers:{
      "Content-Type":"application/json"
    },
    body:JSON.stringify({
      userId,
      password
    })
  });
const data = await res.json();

console.log("FULL DATA:", data);
console.log("USER:", data.user);
console.log("ROLE:", data.user?.role);

if(data.user.role === "student"){

    localStorage.setItem(
        "user",
        JSON.stringify(data.user)
    );

    window.location.href = "student.html";
}
else if(data.user.role === "manager"){

    localStorage.setItem(
        "user",
        JSON.stringify(data.user)
    );

    window.location.href = "manager.html";
}
else{

    document.getElementById("message").innerText =
        "Invalid Login";
}
}