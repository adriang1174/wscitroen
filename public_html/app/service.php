<?php

//! Front-end processor
class Service extends Controller {

	
	function register($f3)
	{
		$p = json_decode($f3->get('POST.reg'),true);
		//$evento = $f3->get('POST.evento');
		$evento = 'Citroen 2017';
		//var_dump($p[0]);
		//$ret = $p[0]; 
		
		foreach($p as $clave=>$ret)
		{
			$result = $this->db->exec('insert into forms (evento,nombre, apellido, email, localidad, codpostal, telefono, dni, estadocivil, auto, 
			                             marca, modelo, patente, cambiaauto, cmodelo, contacto, testdrive, aceptatyc)
                                                        values( :evento,:nombre,:apellido,:email,:localidad,:codpostal,:telefono,:dni,:estadocivil,
                                                        :auto,:marca,:modelo,:patente,:cambiaauto,:cmodelo,:contacto,:testdrive,:aceptatyc)
						ON DUPLICATE KEY UPDATE nombre=VALUES(nombre),apellido=VALUES(apellido),localidad=VALUES(localidad),codpostal=VALUES(codpostal),telefono=VALUES(telefono),
						dni=VALUES(dni),estadocivil=VALUES(estadocivil),auto=VALUES(auto),marca=VALUES(marca),modelo=VALUES(modelo),patente=VALUES(patente),cambiaauto=VALUES(cambiaauto),
						cmodelo=VALUES(cmodelo),contacto=VALUES(contacto),testdrive=VALUES(testdrive),aceptatyc=VALUES(aceptatyc)',
			array('evento'=>$evento ,'nombre'=>$ret['nombre'],':apellido'=>$ret['apellido'],':email'=>$ret['email'],':localidad'=>$ret['localidad'],':codpostal'=>$ret['codpostal'],
			':telefono'=>$ret['telefono'],':dni'=>$ret['dni'],':estadocivil'=>$ret['estadocivil'],':auto'=>$ret['auto'],':marca'=>$ret['marca'],':modelo'=>$ret['modelo'],
			':patente'=>$ret['patente'],':cambiaauto'=>$ret['cambiaauto'],':cmodelo'=>$ret['cmodelo'],
			':contacto'=>$ret['contacto'],':testdrive'=>$ret['testdrive'],':aceptatyc'=>$ret['aceptatyc']));		
		}//mapping cambiaauto-> interes en marca, modelo -> cmodelo, se agrega contacto y testdrive
		$err = array('RET_CODE' =>'OK', 'MSG' => 'Formularios procesados correctamente');
		echo json_encode($err);
	}
	

}
