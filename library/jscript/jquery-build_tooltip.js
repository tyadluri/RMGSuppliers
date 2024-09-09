(function( $, undefined ) {

	var emptyFunction = function(){};
	
	$.widget( "ui.build_tooltip", {
		
		options: {
		},
	
		_create: function(){
			var self = this;
			var options = self.options;
		},
		
		add_tooltip: function(obj){
			var self = this;
			var options = self.options;
			
			if(obj.data('tooltipped') != "true"){
				
				obj.data('tooltipped', 'true');
				
				var info_content = obj.attr('title');
				
				if(typeof info_content === 'undefined' || info_content == ''){
					info_content = obj.data('tooltip');
				}
				
				var include_title = obj.data('title');
				if(typeof include_title === 'undefined'){
					include_title = "false";
				}
	
				var pos_my = 'left center';
				var pos_at = 'right center';
				
				if($(this).data('placement') == 'left'){
					pos_my = 'right center';
					pos_at = 'left center';
				}
				
				var contents = {};
				
				contents['text'] = info_content;
				
				if(include_title != "false"){				
					contents['title'] = include_title;
				}
				
				obj.qtip({
					content: contents,
					position: {
						my: pos_my, // Use the corner...
						at: pos_at // ...and opposite corner
					},
					style: {
						classes: 'qtip-rmg-blue qtip-rounded qtip-shadow'
					}
				});
			}
			
			self._trigger('add_tooltip');
		},
		
		remove_tooltip: function(obj){
			var self = this;
			var options = self.options;
			
			obj.removeData("tooltipped");
			obj.qtip('destroy');
		}
	});
}( jQuery ) );