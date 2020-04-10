$(function (){

$(document).ready(function(){
		
		$(document).on("click","#searchbtn2",function(event){
			
			var page = 1;
			var input_value = $("input[name='login']").val();
			
			if(!input_value){
				location.href="login.jsp";
				return false;
			}
			
			var email = $("input[name='email']").val();
			
			var url = "inqrySelect";
			
			$.ajax({
				data:{"email" : email, "page" : page},
				type:"post",
				url: url ,
				dataType : "json" ,
				
				error:function(){
					alert("error");
				},
				success : function(result) {
					
					//var jsonStr = JSON.stringify(result);
					//alert(jsonStr);
					
					//var json = JSON.parse(jsonStr);
					
					var table = "<table class=table table-bordered><thead><tr><th>제목</th><th>작성자</th><th>문의날짜</th><th>답변여부</th></tr></thead><tbody>";

					//each() 메서드를 이용해서 데이터만큼 반복처리
					//entry.id 또는 entry["id"]으로 표현
					if (result.CHECK) {
						var i = 1;
						
						$.each(result.LIST,function(index,list){
							var str = list.inqry_date;
							var y = str.substr(0, 4);
						    var m = str.substr(4, 2);
						    var d = str.substr(6, 2);

							table += "<tr id='btn'>";
	
							table += "<td>"+ list.inqry_sj+ "</td>";
							table += "<td>"+ list.mbr_email+ "</td>";
							table += "<td>"+ y + "-" +m+ "-" +d+ "</td>";
							table += "<td>"+ list.answer_at+ "</td>";
							table += "<td style='visibility:hidden;position:absolute;'>" + list.inqry_date + "</td></tr>"
							i++;
						});
						
						table += "</tbody></table><br>";
						
						if(result.NEXT){
							table += "<input type='button' value='다음'>";
						}
						
						$('#search').html(table);
						/* $('#display').html(table); */
					}else{
						$('#search').html("<span>문의글이 없습니다</span>");
					}
				}
			});
		});
		
		$(document).on("click","#btn",function(event){
            // 동적으로 여러 태그가 생성된 경우라면 이런식으로 클릭된 객체를 this 키워드를 이용해서 잡아올 수 있다.
        	var tdArr = new Array();    // 배열 선언
            
        	// 현재 클릭된 Row(<tr>)
        	var tr = $(this);
       	 	var td = tr.children();
			
       		// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
       	   // console.log("클릭한 Row의 모든 데이터 : "+tr.text());
       	            
       	    // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
       	    td.each(function(i){
       	        tdArr.push(td.eq(i).text());
       	    });
       	    
       	    var email = tdArr[1];
       	    var date = tdArr[4];
       		
       	    var url = "inqrySelectOne";
			
       	 	$.ajax({
				data:{"email" : email, "date" : date},
				type:"post",
				url: url ,
				dataType : "json" ,
				
				error:function(){
					//alert();
				},
				success : function(result) {
					
					//var jsonStr = JSON.stringify(result);
					//alert(jsonStr);
					
					//{"mbr_email":"123@123","inqry_thema":"예약","answer_at":"N",
					//	"inqry_sj":"123","inqry_ty":"문의","inqry_date":"202003201126","inqry_cn":"123","answer_cn":"1234567"
					//alert(result.inqry_thema);
					//document.select-form.inqry_thema.value = result.inqry_thema;	
					//var  lo_form    =  document.forms["frm1"];
					
					var data = "<table class='table kg-table'>";
						data+= "<colgroup><col width='20%'><col width='30%'><col width='20%'><col width='25%'><col width='5%'></colgroup>";
						data+= "<tbody><tr>";
						data+= "<th scope='row' style='text-align: left;'><span class='ast'>*</span><label>주제</label></th>";
						data+= "<td><div class='regform-input'><input type='text' style='width:300px;' readonly value="+ result.inqry_thema +" />";
						data+= "</div></td>";
						data+= "<th scope='row'><span class='ast'>*</span><label>유형</label></th>";
						data+= "<td><div class='regform-input'><input type='text' style='width:250px;'readonly value="+ result.inqry_ty +" /></div></td></tr>";
						data+= "<tr><th><span class='ast'>*</span><label>제목</label></th>";
						data+= "<td colspan='3'><input class='form-control' style='height:40px;' type='text' value=" + result.inqry_sj + " readonly></td>";
						data+= "</tr><tr><th><br><br><span class='ast'>*</span><label>내용</label><br><br></th><td colspan='3'>";
						data+= "<textarea class='form-control' cols='50' rows='5' readonly='readonly' disabled> " + result.inqry_cn + "</textarea></td></tr><tr>";
						data+= "<th><span class='ast'>*</span><label>이메일</label></th>";
						data+= "<td colspan='4' ><input class='form' style='width:390px; height:40px;' type='text' value=" + result.mbr_email1 + " readonly><b>@</b>";
						data+= "<input class='form' style='width:390px; height:40px;' type='text' value=" + result.mbr_email2 +" readonly></td></tr>";
						data+= "<tr><th><span class='ast'>*</span><label>답변</label></th>";
						data+= "<td colspan='3'><textarea class='form-control' cols='50' rows='5' readonly='readonly' disabled> "+ result.answer_cn + "</textarea></td></tr></tbody></table>";
						
					$('#selectOne').html(data);
				}
       	 	
       	 	});
				
        });
		
	});
	
});