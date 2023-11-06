post_news_btn=document.querySelector(".nav-item.post_news_btn");
manage_post_btn=document.querySelector(".nav-item.manage_post_btn");
// change_password=document.querySelector(".nav-item.change_password_btn");
fix_information_author_btn=document.querySelector(".nav-item.fix_info_author_btn");

const url=window.location.href;
if(url.includes("InsertArticle")){
    post_news_btn.classList.add("highLight");
    manage_post_btn.classList.remove("highLight");
    manage_post_btn.classList.remove("highLight");
    fix_information_author_btn.classList.remove("highLight");
}
else if(url.includes("getArticlesByUser") || url.includes("UpdateArticle")){
    post_news_btn.classList.remove("highLight");
    manage_post_btn.classList.add("highLight");
    fix_information_author_btn.classList.remove("highLight");
}
else if(url.includes("updateUser")){
    post_news_btn.classList.remove("highLight");
    manage_post_btn.classList.remove("highLight");
    fix_information_author_btn.classList.add("highLight");
}
