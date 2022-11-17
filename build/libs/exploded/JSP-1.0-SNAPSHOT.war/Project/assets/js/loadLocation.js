// const signUpBtn = document.getElementById("signUp");
// const signInBtn = document.getElementById("signIn");
// document.getElementById("latitude")
// const container = document.querySelector(".container");
//
// signUpBtn.addEventListener("click", () => {
//     container.classList.add("right-panel-active");
// });
// signInBtn.addEventListener("click", () => {
//     container.classList.remove("right-panel-active");
// });
function Param(){
    let form = document.getLocation;
    let latitude = document.getElementById("latitude").textContent;
    let longitude = document.getElementById("longitude").textContent;

    let input_lat = document.createElement("input");
    input_lat.setAttribute("type","hidden");
    input_lat.setAttribute("name" , "latitude");
    input_lat.setAttribute("value",latitude);
    form.appendChild(input_lat);

    let input_lon = document.createElement("input");
    input_lon.setAttribute("type","hidden");
    input_lon.setAttribute("name" , "longitude");
    input_lon.setAttribute("value",longitude);
    form.appendChild(input_lon);

    form.submit();
}




