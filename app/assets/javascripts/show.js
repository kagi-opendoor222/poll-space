var currentScores = []
var timers = []

function　setAnimations(){
  var elements = Array.from(document.querySelectorAll("[id*=vote-ratio]"))
  var data = elements.map(function(element){
        return {
          id: element.id.match(/group(\d+)\-vote\-ratio/)[1],
          value: element.value
        }
      })
  data.forEach(setVoteAnimation)
}

function setVoteAnimation(item, index, array){
  var li = document.getElementById("group" + (item.id) + "-board")
  var score = li.getElementsByClassName("score")[0]

  li.getElementsByClassName("bar")[0].style = "width: " + (item.value * 0.60 + 10) + "%;"
  currentScores.push(0)
  timers.push(0)

  timers[index] = setInterval(countUpTimer.bind(this), 5, item.value, index, score)
}

function countUpTimer(vote, index, score){
    if(currentScores[index] >= vote){
      clearInterval(timers[index])
      return
    }
    currentScores[index] += 1
    score.textContent = currentScores[index] + "%"
}

document.addEventListener("DOMContentLoaded", function(){
  console.log("aa")

  setTimeout(setAnimations, 350)
})



