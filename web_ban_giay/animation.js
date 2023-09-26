const Login = document.querySelector('.login-js');
const modal = document.querySelector('.js-modal')
const btnclose = document.querySelector('.js-close')

function Showmodal() {
    modal.classList.add('open')
}
function Hidemodal() {
    modal.classList.remove('open')
}

Login.addEventListener('click', Showmodal);

btnclose.addEventListener('click', Hidemodal);