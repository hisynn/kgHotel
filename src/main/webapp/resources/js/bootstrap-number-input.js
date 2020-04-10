
/* ========================================================================
 * bootstrap-spin - v1.0
 * https://github.com/wpic/bootstrap-spin
 * ========================================================================
 * Copyright 2014 WPIC, Hamed Abdollahpour
 *
 * ========================================================================
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================================
 */

(function ( $ ) {
;
	$.fn.bootstrapNumber1 = function( options ) {

		var settings = $.extend({
			upClass: 'default',
			downClass: 'default',
			upText: '+',
			downText: '-',
			center: true
			}, options );

		return this.each(function(e) {
			var self = $(this);
			var clone = self.clone(true, true);

			var min = self.attr('min');
			var max = self.attr('max');
			var step = parseInt(self.attr('step')) || 1;

			function setText(n) {
				if (isNaN(n) || (min && n < min) || (max && n > max)) {
					return false;
				}

				clone.focus().val(n);
				clone.trigger('change');
				return true;
			}
 
			var group = $("<div class='input-group' id='option1'></div>");
			var down = $("<button type='button' id='optionBtn1minus'>" + settings.downText + "</button>").attr('class', 'btn btn-' + settings.downClass).click(function() {
				setText(parseInt(clone.val() || clone.attr('value')) - step);
				var inputprice = $('#inputprice').val();
				var aaa = $('#aaa').val();
				var aaa = parseInt(aaa)-1
				var inputprice =parseInt(inputprice)-35000;
/*				var inputprice = String(inputprice);
				var inputprice = inputprice.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');*/
				$('#inputprice').remove();
				$('#aaa').remove();
				$('#pprice').append("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice' name='price'>");
				$('#option').append("<input class='optionPrice2' value='"+aaa+"' readonly disabled id='aaa' name='aaa' type='hidden'>");
				/*$("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice'>").append('#pprice');*/
				/*$('#pprice').append('asdfasdfadsfasdfasdfasdfasdf');*/
								
				
				
			});
			var up = $("<button type='button' id='optionBtn1plus'>" + settings.upText + "</button>").attr('class', 'btn btn-' + settings.upClass).click(function() {
				setText(parseInt(clone.val() || clone.attr('value')) + step);
				var inputprice = $('#inputprice').val();
				var aaa = $('#aaa').val();
				var inputprice =parseInt(inputprice)+35000;
				var aaa =parseInt(aaa)+1;
/*				var inputprice = String(inputprice);
				var inputprice = inputprice.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');*/
				$('#inputprice').remove();
				$('#aaa').remove();
				$('#pprice').append("<input type='text' class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice'name='price'>");
				$('#option').append("<input type='text' class='optionPrice2' value='"+aaa+"' readonly disabled id='aaa'name='aaa' type='hidden'>");
				/*$("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice'>").append('#pprice');*/
				/*$('#pprice').append('asdfasdfadsfasdfasdfasdfasdf');*/
				
			});
			$("<span class='input-group-btn' id='option1'></span>").append(down).appendTo(group);
			clone.appendTo(group);
			if(clone && settings.center) {
				clone.css('text-align', 'center');
			}
			$("<span class='input-group-btn' id='option1'></span>").append(up).appendTo(group);

			// remove spins from original
			clone.prop('type', 'text').keydown(function(e) {
				if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
					(e.keyCode == 65 && e.ctrlKey === true) ||
					(e.keyCode >= 35 && e.keyCode <= 39)) {
					return;
				}
				if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
					e.preventDefault();
				}

				var c = String.fromCharCode(e.which);
				var n = parseInt(clone.val() + c);

				if ((min && n < min) || (max && n > max)) {
					e.preventDefault();
				}
			});

			self.replaceWith(group);
		});
	};
} ( jQuery ));








//---------------------------------------------------------------------------------------------------
(function ( $ ) {

	$.fn.bootstrapNumber2 = function( options ) {

		var settings = $.extend({
			upClass: 'default',
			downClass: 'default',
			upText: '+',
			downText: '-',
			center: true
			}, options );

		return this.each(function(e) {
			var self = $(this);
			var clone = self.clone(true, true);

			var min = self.attr('min');
			var max = self.attr('max');
			var step = parseInt(self.attr('step')) || 1;

			function setText(n) {
				if (isNaN(n) || (min && n < min) || (max && n > max)) {
					return false;
				}

				clone.focus().val(n);
				clone.trigger('change');
				return true;
			}

			var group = $("<div class='input-group' id='option2'></div>");
			var down = $("<button type='button' id='optionBtn2minus'>" + settings.downText + "</button>").attr('class', 'btn btn-' + settings.downClass).click(function() {
				setText(parseInt(clone.val() || clone.attr('value')) - step);
				var inputprice = $('#inputprice').val();
				var bbb = $('#bbb').val();
				var inputprice =parseInt(inputprice)-30000;
				var bbb =parseInt(bbb)-1;
/*				var inputprice = String(inputprice);
				var inputprice = inputprice.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');*/
				$('#inputprice').remove();
				$('#bbb').remove();
				$('#pprice').append("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice' name='price'>");
				$('#option').append("<input class='optionPrice2' value='"+bbb+"' readonly disabled id='bbb' name='bbb' type='hidden'>");
				/*$("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice'>").append('#pprice');*/
				/*$('#pprice').append('asdfasdfadsfasdfasdfasdfasdf');*/
								
				
				
			});
			var up = $("<button type='button' id='optionBtn2plus'>" + settings.upText + "</button>").attr('class', 'btn btn-' + settings.upClass).click(function() {
				setText(parseInt(clone.val() || clone.attr('value')) + step);
				var inputprice = $('#inputprice').val();
				var bbb = $('#bbb').val();
				var inputprice =parseInt(inputprice)+30000;
				var bbb =parseInt(bbb)+1;
/*				var inputprice = String(inputprice);
				var inputprice = inputprice.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');*/
				$('#bbb').remove();
				$('#inputprice').remove();
				$('#pprice').append("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice' name='price'>");
				$('#option').append("<input class='optionPrice2' value='"+bbb+"' readonly disabled id='bbb' name='bbb' type='hidden'>");
				/*$("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice'>").append('#pprice');*/
				/*$('#pprice').append('asdfasdfadsfasdfasdfasdfasdf');*/
				
			});
			$("<span class='input-group-btn' id='option2'></span>").append(down).appendTo(group);
			clone.appendTo(group);
			if(clone && settings.center) {
				clone.css('text-align', 'center');
			}
			$("<span class='input-group-btn' id='option2'></span>").append(up).appendTo(group);

			// remove spins from original
			clone.prop('type', 'text').keydown(function(e) {
				if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
					(e.keyCode == 65 && e.ctrlKey === true) ||
					(e.keyCode >= 35 && e.keyCode <= 39)) {
					return;
				}
				if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
					e.preventDefault();
				}

				var c = String.fromCharCode(e.which);
				var n = parseInt(clone.val() + c);

				if ((min && n < min) || (max && n > max)) {
					e.preventDefault();
				}
			});

			self.replaceWith(group);
		});
	};
} ( jQuery ));



//---------------------------------------------------------------------------------------------------

(function ( $ ) {

	$.fn.bootstrapNumber3 = function( options ) {

		var settings = $.extend({
			upClass: 'default',
			downClass: 'default',
			upText: '+',
			downText: '-',
			center: true
			}, options );

		return this.each(function(e) {
			var self = $(this);
			var clone = self.clone(true, true);

			var min = self.attr('min');
			var max = self.attr('max');
			var step = parseInt(self.attr('step')) || 1;

			function setText(n) {
				if (isNaN(n) || (min && n < min) || (max && n > max)) {
					return false;
				}

				clone.focus().val(n);
				clone.trigger('change');
				return true;
			}

			var group = $("<div class='input-group' id='option2'></div>");
			var down = $("<button type='button' id='optionBtn3minus'>" + settings.downText + "</button>").attr('class', 'btn btn-' + settings.downClass).click(function() {
				setText(parseInt(clone.val() || clone.attr('value')) - step);
				var inputprice = $('#inputprice').val();
				var ccc = $('#ccc').val();
				var inputprice =parseInt(inputprice)-26446 ;
				var ccc =parseInt(ccc)-1 ;
/*				var inputprice = String(inputprice);
				var inputprice = inputprice.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');*/
				$('#ccc').remove();
				$('#inputprice').remove();
				$('#pprice').append("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice' name='price'>");
				$('#option').append("<input class='optionPrice2' value='"+ccc+"' readonly disabled id='ccc' name='ccc' type='hidden'>");
				/*$("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice'>").append('#pprice');*/
				/*$('#pprice').append('asdfasdfadsfasdfasdfasdfasdf');*/
								
				
				
			});
			var up = $("<button type='button' id='optionBtn3plus'>" + settings.upText + "</button>").attr('class', 'btn btn-' + settings.upClass).click(function() {
				setText(parseInt(clone.val() || clone.attr('value')) + step);
				var inputprice = $('#inputprice').val();
				var ccc = $('#ccc').val();
				var inputprice =parseInt(inputprice)+26446 ;
				var ccc =parseInt(ccc)+1 ;
/*				var inputprice = String(inputprice);
				$('#pprice').append("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice' name='price'>");
				var inputprice = inputprice.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');*/
				$('#ccc').remove();
				$('#inputprice').remove();
				$('#pprice').append("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice' name='price'>");
				$('#option').append("<input class='optionPrice2' value='"+ccc+"' readonly disabled id='ccc' name='ccc' type='hidden'>");
				/*$("<input class='optionPrice2' value='"+inputprice+"' readonly disabled id='inputprice'>").append('#pprice');*/
				/*$('#pprice').append('asdfasdfadsfasdfasdfasdfasdf');*/
				
			});
			$("<span class='input-group-btn' id='option2'></span>").append(down).appendTo(group);
			clone.appendTo(group);
			if(clone && settings.center) {
				clone.css('text-align', 'center');
			}
			$("<span class='input-group-btn' id='option2'></span>").append(up).appendTo(group);

			// remove spins from original
			clone.prop('type', 'text').keydown(function(e) {
				if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
					(e.keyCode == 65 && e.ctrlKey === true) ||
					(e.keyCode >= 35 && e.keyCode <= 39)) {
					return;
				}
				if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
					e.preventDefault();
				}

				var c = String.fromCharCode(e.which);
				var n = parseInt(clone.val() + c);

				if ((min && n < min) || (max && n > max)) {
					e.preventDefault();
				}
			});

			self.replaceWith(group);
		});
	};
} ( jQuery ));
