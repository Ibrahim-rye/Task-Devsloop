const button1 = document.getElementById('button-1')

button1.addEventListener('click', test1)

function test1() {
    alert ("Red Alert")
}


const button2 = document.getElementById("button-2")
const counterDisplay = document.getElementById("counterDisplay")
let count = 0

button2.addEventListener('click', letsCount)

function letsCount() {
    count++
    counterDisplay.innerText = count
}


const button3 = document.getElementById("button-3")

button3.addEventListener('click', changeTheme)

function changeTheme() {
    document.body.style.backgroundColor = '#374151'
    document.body.style.color = 'white'
}


const button6 = document.getElementById("button-6")

button6.addEventListener('click', themeMode)

function themeMode() {

    const currentBGcolor = getComputedStyle(document.body).backgroundColor

    if(currentBGcolor == 'rgb(255, 255, 255)'){   
        console.log('Black background')
        document.body.style.backgroundColor = '#374151'
        document.body.style.color = 'white'
    }
    else{
        console.log('White background')
    document.body.style.backgroundColor = 'white'
    document.body.style.color = 'black'
    }
    
}


window.addEventListener('keydown', function(e){
    console.log(e.code)
})


const button4 = document.getElementById("button-4")
let boolcount = 0

button4.addEventListener('click', boolCount, {once: true})

function boolCount() {
    boolcount++
    console.log(boolcount)
}


const heading = document.getElementById('heading')
const userinput = document.getElementById('userinput')

userinput.addEventListener('input', function(e) {
    heading.innerText = e.target.value ? "Hello " + e.target.value + ", How can I help you Today?" : 'Hello!'
})


function displayDate () {
    document.getElementById('dateDisplay').innerText = Date()
}
 