
let list_post=document.querySelectorAll(".manage_post_body_item");
let btn_post_prev=document.querySelector(".manage_post_list_pagination_btn_action.prev");
let btn_post_next=document.querySelector(".manage_post_list_pagination_btn_action.next");


let thisPost=1;
let limitPost=2;

btn_post_prev.addEventListener('click',()=>{
    if(thisPost>1){
        thisPost--;
        loadPost();
    }
});
btn_post_next.addEventListener('click',()=>{
    if(thisPost<Math.ceil(list_post.length/limitPost)){
        thisPost++;
        loadPost();
    }
});

function loadPost(){
    let begin= (thisPost-1)*limitPost;
    let end= thisPost*limitPost -1;
    list_post.forEach((post,index)=>{
        if(index>=begin && index<=end){
            post.style.display="block";
        }
        else{
            post.style.display="none";
        }
    })
    listPost();
}
loadPost();
function listPost() {
    let count = Math.ceil(list_post.length / limitPost);
    document.querySelector(".manage_post_list_pagination_btn").innerHTML = "";

    for (i = 1; i <= count; i++) {
        let newPost = document.createElement("li");
        newPost.classList.add("manage_post_list_btn")
        newPost.innerText = i;
        if (i == thisPost) {
            newPost.classList.add("mainLight");
        }
        newPost.setAttribute("onclick", "changePost(" + i + ")");
        document.querySelector(".manage_post_list_pagination_btn").appendChild(newPost);
    }

}
function changePost(page) {
    thisPost = page;
    loadPost();
}

