var titulo = localStorage.getItem('titulo');
document.getElementById('tituloCapa').innerHTML = titulo 

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
    }

var tituloCirculo = JSON.parse(localStorage.getItem('circulos'));
    for(var i=0; i< tituloCirculo.length; i++){
        document.getElementById("circulo12"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
    }

var tituloCirculo = JSON.parse(localStorage.getItem('circulos'));
    for(var i=0; i< tituloCirculo.length; i++){
        document.getElementById("circulo13"+tituloCirculo[i].cor).innerHTML = tituloCirculo[i].titulo; 
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

var temaDoisPerguntaUm = localStorage.getItem('temaDoisPerguntaUm');
document.getElementById('conviteCapa').innerHTML = convite  

var temaDoisPerguntaDois = localStorage.getItem('temaDoisPerguntaDois');
document.getElementById('conviteCapa').innerHTML = convite  

var temaTresPerguntaUm= localStorage.getItem('temaTresPerguntaUm');
document.getElementById('conviteCapa').innerHTML = convite  

var temaTresPerguntaDois = localStorage.getItem('temaTresPerguntaDois');
document.getElementById('conviteCapa').innerHTML = convite  

var temaTresPerguntaTres = localStorage.getItem('temaTresPerguntaTres');
document.getElementById('conviteCapa').innerHTML = convite  


