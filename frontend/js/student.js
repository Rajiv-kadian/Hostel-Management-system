const user = JSON.parse(localStorage.getItem("user"));

document.getElementById("studentName").innerText =
  "Name: " + user.name;

document.getElementById("studentRoom").innerText =
  "Room: " + user.room;

document.getElementById("studentFee").innerText =
  "Total Fee: ₹" + user.fee;

document.getElementById("studentFine").innerText =
  "Fine: ₹" + user.fine;

function showSection(section){

  document.querySelectorAll(".section").forEach(sec => {
    sec.classList.add("hidden");
  });

  if(section === "room"){
    document.getElementById("roomSection").classList.remove("hidden");
  }

  if(section === "fees"){
    document.getElementById("feesSection").classList.remove("hidden");
  }

  if(section === "request"){
    document.getElementById("requestSection").classList.remove("hidden");
  }
}