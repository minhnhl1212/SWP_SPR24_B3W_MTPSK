const allSideMenu = document.querySelectorAll('#sidebar .side-menu.top li a');

allSideMenu.forEach(item=> {
	const li = item.parentElement;

	item.addEventListener('click', function () {
		allSideMenu.forEach(i=> {
			i.parentElement.classList.remove('active');
		})
		li.classList.add('active');
	})
});




// TOGGLE SIDEBAR
const menuBar = document.querySelector('#content nav .bx.bx-menu');
const sidebar = document.getElementById('sidebar');

menuBar.addEventListener('click', function () {
	sidebar.classList.toggle('hide');
})







const searchButton = document.querySelector('#content nav form .form-input button');
const searchButtonIcon = document.querySelector('#content nav form .form-input button .bx');
const searchForm = document.querySelector('#content nav form');

searchButton.addEventListener('click', function (e) {
	if(window.innerWidth < 576) {
		e.preventDefault();
		searchForm.classList.toggle('show');
		if(searchForm.classList.contains('show')) {
			searchButtonIcon.classList.replace('bx-search', 'bx-x');
		} else {
			searchButtonIcon.classList.replace('bx-x', 'bx-search');
		}
	}
})





if(window.innerWidth < 768) {
	sidebar.classList.add('hide');
} else if(window.innerWidth > 576) {
	searchButtonIcon.classList.replace('bx-x', 'bx-search');
	searchForm.classList.remove('show');
}


window.addEventListener('resize', function () {
	if(this.innerWidth > 576) {
		searchButtonIcon.classList.replace('bx-x', 'bx-search');
		searchForm.classList.remove('show');
	}
})



const switchMode = document.getElementById('switch-mode');

switchMode.addEventListener('change', function () {
	if(this.checked) {
		document.body.classList.add('dark');
	} else {
		document.body.classList.remove('dark');
	}
})

document.querySelectorAll("#toggleButton").forEach(function(button) {
  button.addEventListener("click", function() {
    if (this.classList.contains("red")) {
      this.classList.remove("red");
      this.style.color = "#007bff";
      this.innerHTML = "Active"; 
    } else {
      this.classList.add("red");
      this.style.color = "#FF0000";      
      this.innerHTML = "Ban"; 
    }
  });
});

/* logout script */
// Get the modal and buttons
var modal = document.getElementById("logoutConfirmationDialog");
var logoutButton = document.getElementById("logoutButton");
var confirmLogoutButton = document.getElementById("confirmLogout");
var cancelButton = document.getElementById("cancelButton");

// Function to display the modal
function showModal() {
    modal.style.display = "block";
}

// Function to close the modal
function closeModal() {
    modal.style.display = "none";
}

// Event listeners
logoutButton.addEventListener("click", showModal);

// Event listener for Cancel button
cancelButton.addEventListener("click", function() {
    window.location.href = "http://localhost:8080/adminpage/admin_account.jsp"; // Redirect to specified URL
});

// Event listener to close modal when clicking outside the modal content
window.addEventListener("click", function(event) {
    if (event.target === modal) {
        closeModal();
    }
});

// Logout functionality
confirmLogoutButton.addEventListener("click", function() {
    // Add your logout logic here, e.g., redirecting to logout page
    // window.location.href = "logout.php";
    alert("Logged out successfully!");
    closeModal();
});