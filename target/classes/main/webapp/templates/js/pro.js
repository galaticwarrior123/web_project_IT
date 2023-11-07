locate_list = document.querySelector('.option_location_list_nocart');
area = document.querySelector('.option_location');
price_list = document.querySelector('.option_price_list_nocart');
price = document.querySelector('.option_price');



btn_login = document.querySelector(".header_login");
btn_signup = document.querySelector(".header_signup");


btn_login.addEventListener('click', () => {
    window.location= "/login";
});
btn_signup.addEventListener('click', () => {
    window.location= "/register";
});



area.addEventListener('click', () => {
    if (locate_list.style.display == 'none') {
        locate_list.style.display = 'block';
        if (price_list.style.display == 'block') {
            price_list.style.display = 'none';
        }
    }
    else {
        locate_list.style.display = 'none';
    }
});



price.addEventListener('click', () => {
    if (price_list.style.display == 'none') {
        price_list.style.display = 'block';
        if (locate_list.style.display == 'block') {
            locate_list.style.display = 'none';
        }
    }
    else {
        price_list.style.display = 'none';
    }
});




