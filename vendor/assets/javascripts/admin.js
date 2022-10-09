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
 * Seleção seguimista e seguidor
 */

var follower = document.getElementById('mounting_follower_id')
var seguidor = document.getElementById('seguidor')
follower.style.visibility = 'hidden';
follower.disabled = true;
seguidor.style.visibility = 'hidden';
seguidor.disabled = true;


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


!function(l){"use strict";l("#sidebarToggle, #sidebarToggleTop").on("click",function(e){l("body").toggleClass("sidebar-toggled"),l(".sidebar").toggleClass("toggled"),l(".sidebar").hasClass("toggled")&&l(".sidebar .collapse").collapse("hide")}),l(window).resize(function(){l(window).width()<768&&l(".sidebar .collapse").collapse("hide"),l(window).width()<480&&!l(".sidebar").hasClass("toggled")&&(l("body").addClass("sidebar-toggled"),l(".sidebar").addClass("toggled"),l(".sidebar .collapse").collapse("hide"))}),l("body.fixed-nav .sidebar").on("mousewheel DOMMouseScroll wheel",function(e){var o;768<l(window).width()&&(o=(o=e.originalEvent).wheelDelta||-o.detail,this.scrollTop+=30*(o<0?1:-1),e.preventDefault())}),l(document).on("scroll",function(){100<l(this).scrollTop()?l(".scroll-to-top").fadeIn():l(".scroll-to-top").fadeOut()}),l(document).on("click","a.scroll-to-top",function(e){var o=l(this);l("html, body").stop().animate({scrollTop:l(o.attr("href")).offset().top},1e3,"easeInOutExpo"),e.preventDefault()})}(jQuery);