const formbtn = document.getElementById('form-button')
const form = document.getElementById('form')
const but = form.querySelector('button')
const input = form.querySelectorAll('input')
const textArea = form.querySelector('textarea')
const label = form.querySelectorAll('label')
const heading = document.getElementById('headin1')

formbtn.addEventListener('click', formColor)

function formColor () {
    form.style.backgroundColor = 'rgb(75, 75, 75)'
    form.style.color = 'white'
    formbtn.style.backgroundColor = '#f4f4f4'
    formbtn.style.color = 'rgb(75, 75, 75)'
  
    input.forEach(input => {
        input.style.color = 'red'
    });
    textArea.style.color = 'red'

    
}

form.addEventListener('submit', submitform)

function submitform (event) {
    event.preventDefault()

    let username = document.getElementById('name').value
    console.log(username)
    let email = document.getElementById('email').value
    console.log(email)

    input.forEach(input => {
        input.style.display = 'none'
    });

    label.forEach(label => {
        label.style.display = 'none'
    });
    textArea.style.display = 'none'

    but.style.display = 'none'

    heading.style.display = 'block'
    heading.style.color = 'white'
    heading.style.textAlign = 'center'
}

