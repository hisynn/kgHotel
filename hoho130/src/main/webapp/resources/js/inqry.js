function inqry(form){
	
	if(form.mbr_email1.value =="" || form.mbr_email2.value==""){
		alert("이메일을 입력해주세요.");
		
		return false;
	}else if(form.inqry_sj.value ==""){
		alert("제목을 입력해주세요.");
		
		return false;
	}else if(form.inqry_cn.value ==""){
		alert("내용을 입력해주세요.");
		
		return false;
	}else if(form.inqry_thema.value=="주제선택"){
		alert("주제를 선택해주세요.");
		
		return false;
	}else if(form.inqry_ty.value=="유형"){
		alert("유형을 선택해주세요.");
		
		return false;
	}else{
		return true;
	}
}
