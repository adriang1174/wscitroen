<?php

//! Front-end processor
class Service extends Controller {

	
	function register($f3)
	{
		$p = json_decode($f3->get('POST.reg'),true);
		$evento = $f3->get('POST.evento');
		//var_dump($p[0]);
		//$ret = $p[0]; 
		
		foreach($p as $clave=>$ret)
		{
			$result = $this->db->exec('insert into forms (evento,nombre, apellido, email, localidad, codpostal, telefono, dni, fechanac, estadocivil, canthijos,
                                                        ocupacion, deportes, auto, marca, modelo, patente, cambiaauto, cmarca, cmodelo, masinfo, suscribe, aceptatyc, registro)
                                                        values( :evento,:nombre,:apellido,:email,:localidad,:codpostal,:telefono,:dni,:fechanac,:estadocivil,
                                                        :canthijos,:ocupacion,:deportes,:auto,:marca,:modelo,:patente,:cambiaauto,:cmarca,:cmodelo,:masinfo,:suscribe,:aceptatyc,:registro)
						ON DUPLICATE KEY UPDATE nombre=VALUES(nombre),apellido=VALUES(apellido),localidad=VALUES(localidad),codpostal=VALUES(codpostal),telefono=VALUES(telefono),
						dni=VALUES(dni),fechanac=VALUES(fechanac),estadocivil=VALUES(estadocivil),canthijos=VALUES(canthijos),ocupacion=VALUES(ocupacion),
						deportes=VALUES(deportes),auto=VALUES(auto),marca=VALUES(marca),modelo=VALUES(modelo),patente=VALUES(patente),cambiaauto=VALUES(cambiaauto),
						cmarca=VALUES(cmarca),cmodelo=VALUES(cmodelo),masinfo=VALUES(masinfo),suscribe=VALUES(suscribe),aceptatyc=VALUES(aceptatyc),registro=VALUES(registro)',
			array('evento'=>$evento ,'nombre'=>$ret['nombre'],':apellido'=>$ret['apellido'],':email'=>$ret['email'],':localidad'=>$ret['localidad'],':codpostal'=>$ret['codpostal'],
			':telefono'=>$ret['telefono'],':dni'=>$ret['dni'],':fechanac'=>$ret['fechanac'],':estadocivil'=>$ret['estadocivil'],':canthijos'=>$ret['canthijos'],
			':ocupacion'=>$ret['ocupacion'],':deportes'=>$ret['deportes'],':auto'=>$ret['auto'],':marca'=>$ret['marca'],':modelo'=>$ret['modelo'],
			':patente'=>$ret['patente'],':cambiaauto'=>$ret['cambiaauto'],':cmarca'=>$ret['cmarca'],':cmodelo'=>$ret['cmodelo'],
			':masinfo'=>$ret['masinfo'],':suscribe'=>$ret['suscribe'],':aceptatyc'=>$ret['aceptatyc'],':registro'=>$ret['registro']));		
		}
		$err = array('RET_CODE' =>'OK', 'MSG' => 'Formularios procesados correctamente');
		echo json_encode($err);
	}
	

}
