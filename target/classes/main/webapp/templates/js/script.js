const logregBox = document.querySelector('.logreg-box');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');


registerLink.addEventListener('click', () => {
    logregBox.classList.add('active');
});

loginLink.addEventListener('click', () => {
    logregBox.classList.remove('active');
});


// url=window.location.href;
//
// if(url=="http://localhost:2003/login"){
//     logregBox.classList.remove('active');
// }
// else{
//     logregBox.classList.add('active');
// }