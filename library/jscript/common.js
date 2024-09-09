$(document).ready(function(){
	build_dialogs();
	$('select').selectmenu({ width : 'auto'});

	replace_text();
	
	$('body').build_tooltip();
	
	$('body').find('[data-toggle=tooltip]').each(function(){
		$('body').build_tooltip('add_tooltip', $(this));
	});
});

function replace_text(){
	Cufon.replace('h1, h2, h3, h5', {
		textShadow: '-1px -1px 0 #0c4b7b, 1px -1px 0 #0c4b7b, -1px 1px 0 #0c4b7b, 1px 1px 0 #0c4b7b'
	});
	
	Cufon.replace('h4');
	
	Cufon.replace('p.browser_text');
	
	Cufon.replace('.ui-menu-item a', {
		color: '#ffffff',
		hover: {
			color: '#000000'
		}
	});
}

var pushFormData = function(sFormSelector, aoData){
    var filter = $(sFormSelector).serializeArray();
    for(var index in filter) {
        aoData.push({name : filter[index]['name'], value : filter[index]['value']});
    }
};
			
function include(jsFile){
	document.write('<script type="text/javascript" src="'+ jsFile + '"></script>');
}

var get_options = function(a, select, callback, query, url){
	
	var loading = $( document.createElement('div') )
		.attr('id', select + '_loading')
		.addClass('loading_msg_1');
	
	$("#" + select).parent().append(loading);
	$("#" + select + '_input').hide();
	$("#" + select + '_loading').show();

	
	if(query === undefined){
		query = '';
	}
	
	if(url === undefined){
		url = $(location).attr('href');
	}
	
	$.post(url,
	'a=' + a + query,
	function(data){
		
		var $el;
		
		if(typeof select === 'string'){
			$el = $("#" + select);
		}else{
			$el = select;
		}
		
		$el.empty();
		
		for(d=0;d<data.length;d++){			
			$el.append($("<option></option>").attr("value", data[d]['value']).text(data[d]['name']));
		}
		
		$("#" + select + '_loading').remove();
		$("#" + select + '_input').show();
		//$('#' + select).combobox('update');

		if($.isFunction(callback) === true){
			callback();
		}
	}, 
	"json");
};

function show_error(messages){
	var self = this;
	var options = this.options;
	
	var error_message = "";
	
	if(messages.length > 0){
		error_message += "<ul>";
	}
	
	try{
		for(r=0;r<messages.length;r++){
			if(messages[r]["outcome"] == true){ 
				error_message += "<li>" + messages[r]["message"] + "</li>";
			}
		}
	}catch(err){
		alert(err.description);
	}
	
	if(messages.length > 0){
		error_message += "</ul>";
	}

	if(error_message == "<ul></ul>"){
		error_message = '';
	}
	
	$('#error_message').html(error_message);
	
	if (error_message != ""){
		$("#error_dialog").dialog('open');	
	}
}

function build_dialogs(){
	/* Error Dialog */
	
	var a = $( document.createElement('div') );
	a.attr({
		'id': "error_dialog",
		'title': "Errors!"
	});
	a.addClass("dialog_1");
	
	var b = $( document.createElement('p') );
	b.attr({
		'id': 'error_message',
		'style': 'text-align:left;'
	});
	
	a.append(b);
	$('.wrapper').append(a);
	
	$("#error_dialog").dialog({  
		modal: true,
		autoOpen: false,
		resizable: false,
	   	closeOnEscape: false,
	   	open: function(event, ui) { $(".ui-dialog-titlebar-close").show(); },
	   	buttons: {
			Close: function() {
				$(this).dialog('close');
			}
		}
	});

	/* Processing Dialog */
	
	var a = $( document.createElement('div') );
	a.attr({
		'id': "processing_dialog",
		'title': "Processing"
	});
	a.addClass("dialog_1");
	
	var b = $( document.createElement('p') );
	b.attr({
		"style" : "text-align:center;display:none;margin-bottom:10px;",
		"id" : "processing_dialog_message"
	});
	
	var c = $( document.createElement('p') );
	c.attr("style", "text-align:center;");
	c.html('<img src="/images/ajax-loader.gif" />');
	
	a.append(b);
	a.append(c);
	$('.wrapper').append(a);
	
	$("#processing_dialog").dialog({  
		modal: true,
		resizable: false,
		autoOpen: false,
	   	closeOnEscape: false,
	   	open: function(event, ui) { $(".ui-dialog-titlebar-close").hide(); }
	});
	
	/* Browser Dialog */
	
	var a = $( document.createElement('div') );
	a.attr({
		'id': "browser_dialog",
		'title': "Browser Aware"
	});
	a.addClass("dialog_1");
	
	var p = $( document.createElement('p'))
		.html('We have detected that you are using old browser. To get the best out of RMG Suppliers we recommend that you upgrade.')
		.addClass('browser_text');
	
	a.append(p);
	
	var image1 = $( document.createElement('a'))
		.attr({
			'href'			:	'http://www.google.com/chromeframe?prefersystemlevel=true',
			'target'		:	'_blank',
			'data-toggle'	:	'tooltip',
			'data-tooltip'	:	'This is a plugin for Internet Explorer that keeps the look and feel whilst adding enhanced security, a faster JavaScript Engine and a better rendering engine.',
			'data-title'	:	'Chrome Frame'
		})
		.addClass('browser-icon chrome_frame');
	
	a.append(image1);
	
	var image1 = $( document.createElement('a'))
		.attr({
			'href'			:	'https://www.google.com/intl/en/chrome/browser/',
			'target'		:	'_blank',
			'data-toggle'	:	'tooltip',
			'data-tooltip'	:	'A fast new browser from Google',
			'data-title'	:	'Chrome'
		})
		.addClass('browser-icon chrome');
	
	a.append(image1);
	
	var image1 = $( document.createElement('a'))
		.attr({
			'href'			:	'http://www.firefox.com/',
			'target'		:	'_blank',
			'data-toggle'	:	'tooltip',
			'data-tooltip'	:	"Your online security is Firefox's top priority. Firefox is free, and made to help you get the most out of the web.",
			'data-title'	:	'Firefox'
		})
		.addClass('browser-icon firefox');
	
	a.append(image1);
	
	var image1 = $( document.createElement('a'))
		.attr({
			'href'			:	'http://www.opera.com/',
			'target'		:	'_blank',
			'data-toggle'	:	'tooltip',
			'data-tooltip'	:	'The fastest browser on Earth�secure, powerful and easy to use, with excellent privacy protection. And it is free.',
			'data-title'	:	'Opera'
		})
		.addClass('browser-icon opera');
	
	a.append(image1);
	
	var image1 = $( document.createElement('a'))
		.attr({
			'href'			:	'http://www.apple.com/safari/',
			'target'		:	'_blank',
			'data-toggle'	:	'tooltip',
			'data-tooltip'	:	'Safari for Mac from Apple, the world�s most innovative browser.',
			'data-title'	:	'Safari'
		})
		.addClass('browser-icon safari');
	
	a.append(image1);
	
	$('.wrapper').append(a);
	
	$("#browser_dialog").dialog({  
		modal: true,
		autoOpen: false,
		resizable: false,
	   	closeOnEscape: false,
	   	width: 800,
	   	height: 500,
	   	open: function(event, ui) { $(".ui-dialog-titlebar-close").show(); },
	   	buttons: {
			Close: function() {
				$(this).dialog('close');
			}
		}
	});
}

function kill_dialogs(){
	$('#error_dialog').remove();
	$('#processing_dialog').remove();
}

function rebuild_dialogs(){
	kill_dialogs();
	build_dialogs();
}

function select_all(id){
	var has = 0;
	
	$('#' + id + ' tbody div.tickbox').each(function(){
		var id = $(this).attr('id') + '_node_radios-1_answer';
		if($('#' + id).val() == '1'){
			has++;
			return false;
		}
	});
	
	$('#' + id + ' tbody div.tickbox').each(function(){
		if(has > 0){
			$(this).radio('set', '');
		}else{
			$(this).radio('set', '1');
		}
	});

	if(has > 0){
		$('#' + id + '_all').radio('set', '');
	}else{
		$('#' + id + '_all').radio('set', '1');
	}
}