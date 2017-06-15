var headers = document.getElementsByTagName('h1');
var header1 = headers[0];
header1.style.border = "3px solid pink";

function addBackground(event){
event.target.style.border = "5px solid green";
}

var testing_event = document.getElementById('test');
testing_event.addEventListener("mouseover",addBackground);

