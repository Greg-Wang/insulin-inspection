// Working website would track averages over time. This prototype website has these numbers hard-coded for now
var currentBloodSugar = 6.1;
var computedInsulinAmount = 0;



// We are working on an ai algorithm to generate these numbers based on many variable about the user. This prototype website has these hard-coded for now
var minBloodSugar = 4;
var maxBloodSugar = 8;



document.getElementById("track-meal").style.top = window.innerHeight + 'px';
document.getElementById('input-insulin').style.top = window.innerHeight*2 + 'px'
displayBloodSugar();

function displayBloodSugar(){
    let bloodSugarLevel = document.getElementById("blood-sugar");
    let warning = document.getElementById("warning");

    bloodSugarLevel.innerHTML = "Blood Sugar Level: " + currentBloodSugar + "mmol/L";
    if(currentBloodSugar < minBloodSugar || currentBloodSugar > maxBloodSugar){
        warning.innerHTML = "Your current blood sugar level lies outside the normal range of 4-8 mmol/L. Consider seeing a health professional immediately."
        bloodSugarLevel.style.color = 'red';
    } else{
        bloodSugarLevel.style.color = 'green';
        warning.innerHTML = "Your current blood sugar level lies within the normal range of 4-8 mmol/L.";
    }
}




function trackMeal(){
    window.scroll({
        top: window.innerHeight,
        left: 0,
        behavior: 'smooth'
    });
}

function getInsulin(){   
    let carbs = document.getElementById("carb-input").value;
    let insulinUnits = Math.round(computeInsulinAmount(carbs));
    document.getElementById("insulin-suggestion").innerHTML = "We recommend you take " + insulinUnits + " units of insulin."
    extend();
}
function extend(){
    let extendBox = document.getElementById("track-meal");
    let appearBox = document.getElementById("appear-on-extend");
    extendBox.className="extend";
    appearBox.className = "appear";
}

function inputBloodSugar(){
    window.scroll({
        top: window.innerHeight*2,
        left: 0,
        behavior: 'smooth'
    });
}

function updateBloodSugar(){
    currentBloodSugar = document.getElementById('blood-sugar-input').value;
    displayBloodSugar();
    backToTop();
}



function backToTop(){
    window.scroll({
        top: 0,
        left: 0,
        behavior: 'smooth'
    });
}

function computeInsulinAmount(carbs){
    // Here we would use an AI algorithm to find optimum amount to take. This number will fluctuate throughout the day
    // For the prototype, we will use a simple 1:10 ratio

    return carbs/10;

}

