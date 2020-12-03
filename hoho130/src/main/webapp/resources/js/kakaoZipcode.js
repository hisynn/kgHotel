function openDaumZipAddress() {
	new daum.Postcode({
		oncomplete : function(data) {
			jQuery("#postcode1").val(data.postcode1);
			jQuery("#postcode2").val(data.postcode2);
			jQuery("#zonecode").val(data.zonecode);
			jQuery("#address").val(data.address);
			jQuery("#address_etc").focus();
			console.log(data);
		}
	}).open();
}