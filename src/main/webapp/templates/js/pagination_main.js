
let thisPage = 1;
let limit = 6;
let list = document.querySelectorAll('.container_item_product_info');

prev= document.querySelector(".item_btn.prev");
next= document.querySelector(".item_btn.next");

next.addEventListener('click',()=>{
    if(thisPage<Math.ceil(list.length/limit)){
        thisPage++;
        loadPage();
    }
});
prev.addEventListener('click',()=>{
    if(thisPage>1){
        thisPage--;
        loadPage();
    }
});
function loadPage() {
    let beginGet = limit * (thisPage - 1);
    let endGet = limit * thisPage - 1;
    list.forEach((item, key) => {
        if (key >= beginGet && key <= endGet) {
            item.style.display = "block";
        }
        else {
            item.style.display = "none";
        }
    })
    listPage()
}
loadPage();
function listPage() {
    let count = Math.ceil(list.length / limit);
    document.querySelector(".container_item_btn_listPage").innerHTML = "";

    for (i = 1; i <= count; i++) {
        let newPage = document.createElement("li");
        newPage.classList.add("container_item_btn_item");
        newPage.innerText = i;
        if (i == thisPage) {
            newPage.classList.add("highLight");

        }
        newPage.setAttribute("onclick", "changePage(" + i + ")");
        document.querySelector(".container_item_btn_listPage").appendChild(newPage);
    }

}
function changePage(page) {
    thisPage = page;
    loadPage();
}


