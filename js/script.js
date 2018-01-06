$('#intro_titulo').fadeIn(1100);

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
