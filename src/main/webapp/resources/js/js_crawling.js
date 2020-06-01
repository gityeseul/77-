$(function(){
		var url;
		var cat;
		$("#url").val($(this).val());
		$("#cat").val($(this).val());
		$("#temp").val($(this).val());
		$("#url").change(function(){
			 url = $(this).val();
			$("#urlText").val(url);
		});
		$("#cat").change(function(){
			cat = $(this).val();
			alert(url+cat);
		});
		$("#req").click(function(){
			if(url!=null && cat!=null){
				alert(url+cat);
			}
			else{
				alert("no");
			}
		});
	});