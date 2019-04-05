(function() {
	const doc = new jsPDF();
	const specialElementHandlers = {
		'#editor' : function(element, renderer) {
			return true;
		}
	};

	$('#cmd').click(function() {
		doc.fromHTML($('#content').html(), 15, 15, {
			'width' : 170,
			'elementHandlers' : specialElementHandlers
		});
		doc.save('resume.pdf');
	});
})();
