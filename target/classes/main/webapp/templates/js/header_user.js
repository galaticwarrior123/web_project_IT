btn_account = document.querySelector('.header_n2_account img');
box_account = document.querySelector('.box_author');

btn_account.addEventListener('click', () => {
    if (box_account.style.display == 'none') {
        box_account.style.display = 'block';
    }
    else {
        box_account.style.display = 'none';
    }
});
