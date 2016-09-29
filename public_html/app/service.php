<?php

//! Front-end processor
class Service extends Controller {

	
	function register($f3)
	{
		$p = json_decode($f3->get('POST.reg'),true);
		$evento = 'Hoteles Mas Verdes';
		//var_dump($p[0]);
		//$ret = $p[0]; 
		
		foreach($p as $clave=>$ret)
		{
			$result = $this->db->exec('insert into forms (evento, email, edad, sexo, op1, op2, conoce, donde)
                                                        values( :evento,:email,:edad,:sexo,:op1,:op2,:conoce,:donde)
						ON DUPLICATE KEY UPDATE edad=VALUES(edad),sexo=VALUES(sexo),op1=VALUES(op1),op2=VALUES(op2),conoce=VALUES(conoce),donde=VALUES(donde)',
			array('evento'=>$evento ,':email'=>$ret['email'],':edad'=>$ret['edad'],':sexo'=>$ret['sexo'],':op1'=>$ret['op1'],':op2'=>$ret['op2'],':conoce'=>$ret['conoce'],':donde'=>$ret['donde']));		
		}
		$err = array('RET_CODE' =>'OK', 'MSG' => 'Formularios procesados correctamente');
		echo json_encode($err);
	}
	

}
