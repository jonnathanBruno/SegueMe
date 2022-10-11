/*!
 * Máscaras de formatação
 */

$( "#follower_contact" ).keypress(function() {
    $(this).mask('(00) 90000-0000');
});

$( "#speaker_contact" ).keypress(function() {
    $(this).mask('(00) 90000-0000');
});

$( "#participant_contact" ).keypress(function() {
    $(this).mask('(00) 90000-0000');
});


/*!
 * search seguimista
 */
var data =JSON.parse(document.getElementById("search").name);

var options = {
    getValue: "name",
	data: data,
    cssClasses: "form-control bg-light border-0 small",

	list: {

        match: {
			enabled: true
		}
        ,
		onSelectItemEvent: function() {
			var value = $("#search").getSelectedItemData().id;
            localStorage.setItem("valorID", value)
		}
	}
};
$("#search").easyAutocomplete(options);

 function pesquisar(){
    window.location="/followers/" + localStorage.getItem('valorID');  
 }


var follower = document.getElementById('mounting_follower_id')
var seguidor = document.getElementById('seguidor')
var funcao = document.getElementById('mounting_occupation');

    if (follower != null && seguidor != null){
        follower.style.visibility = 'hidden';
        follower.disabled = true;
        seguidor.style.visibility = 'hidden';
        seguidor.disabled = true;
    }

    if (funcao != null){

        document.getElementById('mounting_occupation').addEventListener('change', function() {
        var input = document.getElementById('mounting_occupation')
        var follower = document.getElementById('mounting_follower_id')
        var participant = document.getElementById('mounting_participant_id')
        var seguidor = document.getElementById('seguidor')
        var participante = document.getElementById('participante')

            if (input.value == "Seguimista") {
                participant.style.visibility = 'Visible';
                participant.disabled = false;
                participante.style.visibility = 'Visible';
                participante.disabled = false;

                seguidor.style.visibility = 'hidden';
                seguidor.disabled = true;
                follower.style.visibility = 'hidden';
                follower.disabled = true;
            } else {
                follower.style.visibility = 'Visible';
                follower.disabled = false;
                seguidor.style.visibility = 'Visible';
                seguidor.disabled = false;

                participant.style.visibility = 'hidden';
                participant.disabled = true;
                participante.style.visibility = 'hidden';
                participante.disabled = true;
            }
        });
    }
    

function adicionarPadroeiro() {
    var padroeiro = localStorage.getItem('padroeiro');
    localStorage.setItem("padroeiro", document.getElementById('padroeiro').value.toUpperCase());

    var padroeiroHistoria = localStorage.getItem('padroeiroHistoria');
    localStorage.setItem("padroeiroHistoria", document.getElementById('padroeiroHistoria').value);
    document.getElementById('alertaQuadrante').style.visibility = 'Visible';
    setTimeout(zerando, 2000);
}

function adicionarPos() {
    var dataPos = localStorage.getItem('dataPos');
    localStorage.setItem("dataPos", document.getElementById('dataPos').value);
    document.getElementById('alertaQuadrante').style.visibility = 'Visible';
    setTimeout(zerando, 2000);
}

function adicionarTitulo() {
    var titulo = localStorage.getItem('titulo');
    localStorage.setItem("titulo", document.getElementById('titulo').value.toUpperCase());

    var dataEncontro = localStorage.getItem('dataEncontro');
    localStorage.setItem("dataEncontro", document.getElementById('dataEncontro').value.toUpperCase());

    document.getElementById('alertaQuadrante').style.visibility = 'Visible';
    setTimeout(zerando, 2000);
}

function gerarQuadrante() {  
    window.location="/mountings";   
}

function zerando() { 
    document.getElementById('alertaQuadrante').style.visibility = 'hidden';
}

function adicionarTituloCirculo(cor) { 
    var circulos = JSON.parse(localStorage.getItem('circulos') || "[]");
    var adicionado = false;
    var nomecirculo =  document.getElementById('nomeCirculo'+cor).value;

    for(var i=0; i< circulos.length; i++){
        if(circulos[i].cor == cor){

            circulos[i].cor = cor;
            circulos[i].titulo = nomecirculo;
            adicionado = true;
            break;
        } 
    }
    if(adicionado == false) circulos.push({"cor":cor,"titulo":nomecirculo});
    localStorage.setItem("circulos",  JSON.stringify(circulos)); 

    document.getElementById('alertaQuadrante').style.visibility = 'Visible';
    setTimeout(zerando, 2000);   
}

function cadastrarRespostas(cor, tema, pergunta) { 
    var adicionado = false;
    var resposta = JSON.parse(localStorage.getItem("tema"+tema+"Pergunta"+pergunta) || "[]");
    var respostaCirculo =  document.getElementById("tema"+tema+"Pergunta"+pergunta+"Circulo"+cor).value;

    for(var i=0; i< resposta.length; i++){
        if(resposta[i].cor == cor){
            resposta[i].resposta = respostaCirculo;
            resposta[i].cor = cor;
            adicionado = true;
            break;
        } 
    }
    if(adicionado == false)
        resposta.push(
        {
         "resposta" : respostaCirculo,
         "cor": cor
        });
    localStorage.setItem("tema"+tema+"Pergunta"+pergunta,  JSON.stringify(resposta));   
    document.getElementById('alertaQuadrante').style.visibility = 'Visible';
    setTimeout(zerando, 2000);    
}



!function(l){"use strict";l("#sidebarToggle, #sidebarToggleTop").on("click",function(e){l("body").toggleClass("sidebar-toggled"),l(".sidebar").toggleClass("toggled"),l(".sidebar").hasClass("toggled")&&l(".sidebar .collapse").collapse("hide")}),l(window).resize(function(){l(window).width()<768&&l(".sidebar .collapse").collapse("hide"),l(window).width()<480&&!l(".sidebar").hasClass("toggled")&&(l("body").addClass("sidebar-toggled"),l(".sidebar").addClass("toggled"),l(".sidebar .collapse").collapse("hide"))}),l("body.fixed-nav .sidebar").on("mousewheel DOMMouseScroll wheel",function(e){var o;768<l(window).width()&&(o=(o=e.originalEvent).wheelDelta||-o.detail,this.scrollTop+=30*(o<0?1:-1),e.preventDefault())}),l(document).on("scroll",function(){100<l(this).scrollTop()?l(".scroll-to-top").fadeIn():l(".scroll-to-top").fadeOut()}),l(document).on("click","a.scroll-to-top",function(e){var o=l(this);l("html, body").stop().animate({scrollTop:l(o.attr("href")).offset().top},1e3,"easeInOutExpo"),e.preventDefault()})}(jQuery);