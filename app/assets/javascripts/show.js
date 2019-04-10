function　depictPollBar(){
  var votes = Array.from(document.querySelectorAll("[id*=vote-ratio]")).map(function(element){
        return element.value
      })
  votes.forEach(function(vote, index){
    var li = document.getElementById("group" + (index + 1) + "-board")
    li.getElementsByClassName("bar")[0].style = "width: " + (vote * 0.60 + 10) + "%;"
  })
}

document.addEventListener("DOMContentLoaded", function(){
  console.log("aa")

  setTimeout(depictPollBar, 600)
})



