console.log('Mergeee!')
function runButton(){
    alert('Felicitari! Formularul dumneavoastra a fost inregistrat cu succes! Sunteti membru Seven Fitness Club!');
}

//dropdown menu function
function myDropdownFunction() {
    document.getElementById("dropdown").classList.toggle("show");
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
    if (!event.target.matches('.dropbtn')) {
      var dropdowns = document.getElementsByClassName("dropdown-content");
      var i;
      for (i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
        if (openDropdown.classList.contains('show')) {
          openDropdown.classList.remove('show');
        }
      }
    }
  }