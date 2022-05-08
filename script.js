function typeWrite(elemento){
    const textoArray = elemento.innerHTML.split('');
    elemento.innerHTML = ' ';
    textoArray.forEach(function(letra, i){   
      
    setTimeout(function(){
        elemento.innerHTML += letra;
    }, 95 * i)

  });
}
function typeStack(elemento){
    const textoArray = elemento.innerHTML.split('');
    elemento.innerHTML = ' ';
    textoArray.forEach(function(letra, i){   
      
    setTimeout(function(){
        elemento.innerHTML += letra;
    }, 95 * i)

  });
}
const name = document.querySelector('.name-description');
typeWrite(name);
const stack = document.querySelector('.name-stack');
typeStack(stack);
function displayAbout(){
  let arrow = document.getElementById('animation');
  arrow.classList.toggle('rotate');
  let display  = document.querySelector('.about-div');
  display.classList.toggle('active');

}