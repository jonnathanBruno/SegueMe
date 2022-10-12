var titulo = localStorage.getItem('titulo');
document.getElementById('tituloCapa').innerHTML = titulo 
document.getElementById('tituloEncontroPalestra').innerHTML = titulo 

var data = localStorage.getItem('dataEncontro');
document.getElementById('dataCapa').innerHTML = data 

var padroeiro = localStorage.getItem('padroeiro');
document.getElementById('padroeiroCapa').innerHTML = padroeiro

var historia = localStorage.getItem('padroeiroHistoria');
document.getElementById('historiaCapa').innerHTML = historia 

var convite = localStorage.getItem('dataPos');
document.getElementById('conviteCapa').innerHTML = convite  


// nome circulos
var tituloCirculo = JSON.parse(localStorage.getItem('circulos'));
    for(var i=0; i< tituloCirculo.length; i++){
        document.getElementById("circulo11"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
        document.getElementById("circulo12"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
        document.getElementById("circulo13"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
        document.getElementById("circulo21"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
        document.getElementById("circulo22"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
        document.getElementById("circulo31"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
        document.getElementById("circulo32"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
        document.getElementById("circulo33"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
    }


// respostas circulos
var temaUmPerguntaUm = JSON.parse(localStorage.getItem('temaUmPerguntaUm'));
    for(var i=0; i< temaUmPerguntaUm.length; i++){
        document.getElementById("resposta11"+temaUmPerguntaUm[i].cor).innerHTML = temaUmPerguntaUm[i].resposta; 
    }

var temaUmPerguntaDois = JSON.parse(localStorage.getItem('temaUmPerguntaDois'));
    for(var i=0; i< temaUmPerguntaDois.length; i++){
        document.getElementById("resposta12"+temaUmPerguntaDois[i].cor).innerHTML = temaUmPerguntaDois[i].resposta; 
    }

var temaUmPerguntaTres = JSON.parse(localStorage.getItem('temaUmPerguntaTres'));
for(var i=0; i< temaUmPerguntaTres.length; i++){
    document.getElementById("resposta13"+temaUmPerguntaTres[i].cor).innerHTML = temaUmPerguntaTres[i].resposta; 
} 

var temaDoisPerguntaUm = JSON.parse(localStorage.getItem('temaDoisPerguntaUm'));
for(var i=0; i< temaDoisPerguntaUm.length; i++){
    document.getElementById("resposta21"+temaDoisPerguntaUm[i].cor).innerHTML = temaDoisPerguntaUm[i].resposta; 
} 

var temaDoisPerguntaDois = JSON.parse(localStorage.getItem('temaDoisPerguntaDois'));
for(var i=0; i< temaDoisPerguntaDois.length; i++){
    document.getElementById("resposta22"+temaDoisPerguntaDois[i].cor).innerHTML = temaDoisPerguntaDois[i].resposta; 
} 

var temaTresPerguntaUm = JSON.parse(localStorage.getItem('temaTresPerguntaUm'));
for(var i=0; i< temaTresPerguntaUm.length; i++){
    document.getElementById("resposta31"+temaTresPerguntaUm[i].cor).innerHTML = temaTresPerguntaUm[i].resposta; 
} 

var temaTresPerguntaDois = JSON.parse(localStorage.getItem('temaTresPerguntaDois'));
for(var i=0; i< temaTresPerguntaDois.length; i++){
    document.getElementById("resposta32"+temaTresPerguntaDois[i].cor).innerHTML = temaTresPerguntaDois[i].resposta; 
} 

var temaTresPerguntaTres = JSON.parse(localStorage.getItem('temaTresPerguntaTres'));
for(var i=0; i< temaTresPerguntaTres.length; i++){
    document.getElementById("resposta33"+temaTresPerguntaTres[i].cor).innerHTML = temaTresPerguntaTres[i].resposta; 
} 


