
//ANIMAÇÃO INICIAL
$('#intro_titulo').fadeIn(1100);

// ABRIR MODAL
function showModal(id) 
{
	var modal = $("#" + id);
	modal.css("display", "block");
}

function closeModal(id)
{
	var modal = $("#" + id);
	modal.css("display", "none");
}


// ANIMAÇÃO PÁGINA "OBRIGADO"
$('#obrigada_frase1').fadeIn(1000);

$('#obrigada_frase2').delay(1000).fadeIn(1000).animate({'margin-top':'30px'}, 500);

$('#obrigada_frase3').delay(2000).fadeIn(1000);

$('.botao_obrigado').delay(3000).fadeIn(1000);