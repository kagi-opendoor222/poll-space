var currentScores = []
var timers = []

function　setAnimations(){
  var votes = Array.from(document.querySelectorAll("[id*=vote-ratio]")).map(function(element){
        return element.value
      })

  votes.forEach(setVoteAnimation)
}

function setVoteAnimation(vote, index){
  console.log(vote, index)
  var li = document.getElementById("group" + (index + 1) + "-board")
  var score = li.getElementsByClassName("score")[0]

  li.getElementsByClassName("bar")[0].style = "width: " + (vote * 0.60 + 10) + "%;"
  currentScores.push(0)
  timers.push(0)

  timers[index] = setInterval(countUpTimer.bind(this), 5, vote, index, score)
}

function countUpTimer(vote, index, score){
    if(currentScores[index] >= vote){
      clearInterval(timer)
    }
    currentScores[index] += 1
    score.textContent = currentScores[index] + "%"
}

document.addEventListener("DOMContentLoaded", function(){
  console.log("aa")

  setTimeout(setAnimations, 350)
})



