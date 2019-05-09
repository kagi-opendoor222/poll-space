let timer
function checkScroll(){
  if(timer == null){
    timer = setTimeout(fitHeaderToScroll, 100)
  }
}

function fitHeaderToScroll(){
  var header = document.getElementById("header")
  var scrollY = window.scrollY
  console.log(header)
  if(scrollY > 70){
    header.classList.add("smallHeader")
  }else{
    header.classList.remove("smallHeader")
  }
  timer = null

  
}

document.addEventListener("DOMContentLoaded", function(){
  window.addEventListener("scroll",checkScroll)
})