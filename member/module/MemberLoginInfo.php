<?php

/*
	[�������] ��Ա��¼��Ϣ��ȫվ��
	[���÷�Χ] ȫվ
*/

function MemberLoginInfo(){

	global $msql;
		
	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];

	$Temp=LoadTemp($tempname);
	$TempArr=SplitTblTemp($Temp);
	
	$msql->query("select * from {P}_member where memberid='".$_COOKIE["MEMBERID"]."'");
	if($msql->next_record()){
		$user=$msql->f('user');
		$memberid=$msql->f('memberid');
		$name=$msql->f('name');

		if($name!=""){
			$user=$name;
		}
		$memberurl=ROOTPATH."member/home.php?mid=".$memberid;
		
		$var=array(
			'user' => $user,
			'memberurl' => $memberurl
		);
		
		$str=ShowTplTemp($TempArr["start"],$var);

	}else{
		$str=$TempArr["end"];
	}

	
	return $str;


}

?>