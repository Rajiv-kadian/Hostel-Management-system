async function loadStudents(){

  const res = await fetch("http://localhost:5000/students");

  const students = await res.json();

  const studentTable = document.getElementById("studentTable");
  const feesTable = document.getElementById("feesTable");

  students.forEach(student => {

    studentTable.innerHTML += `
      <tr>
        <td>${student.user_id}</td>
        <td>${student.name}</td>
        <td>${student.role}</td>
        <td>${student.room}</td>
      </tr>
    `;

    if(student.role === "student"){

      feesTable.innerHTML += `
        <tr>
          <td>${student.name}</td>
          <td>₹${student.fee}</td>
          <td>₹${student.fine}</td>
        </tr>
      `;
    }
  });
}

function showManagerSection(section){

  document.querySelectorAll(".manager-section").forEach(sec => {
    sec.classList.add("hidden");
  });

  if(section === "students"){
    document.getElementById("studentsSection").classList.remove("hidden");
  }

  if(section === "rooms"){
    document.getElementById("roomsSection").classList.remove("hidden");
  }

  if(section === "fees"){
    document.getElementById("feesSection").classList.remove("hidden");
  }
}

loadStudents();