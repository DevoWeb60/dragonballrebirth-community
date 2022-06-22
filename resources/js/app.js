require("./bootstrap");

// !DASHBOARD
if (window.location.pathname == "/dashboard") {
    require("./dashboard/index");
}

if (window.location.pathname != "/dashboard") {
    const hamburger = document.querySelector("#hamburger");
    const navList = document.querySelector(".nav-list");

    hamburger.addEventListener("click", () => {
        console.log(navList);
        navList.classList.toggle("active");
    });
}
