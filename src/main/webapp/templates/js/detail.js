let listImg= document.querySelectorAll('.img_detail');

let thisImage = 1;
let limitImage = 1;



btn_next = document.querySelector('.show_detail_image_btn_right');
btn_prev = document.querySelector('.show_detail_image_btn_left');
btn_next.addEventListener('click', () => {
    if (thisImage < listImg.length) {
        thisImage++;
        loadImg();
    }
})
btn_prev.addEventListener('click', () => {
    if (thisImage > 1) {
        thisImage--;
        loadImg();
    }
})

function loadImg(){
    let begin= (thisImage-1)*limitImage;
    let end= thisImage*limitImage -1;
    listImg.forEach((img,index)=>{
        if(index>=begin && index<=end){
            img.style.display="block";
        }
        else{
            img.style.display="none";
        }
    })
}
loadImg();

