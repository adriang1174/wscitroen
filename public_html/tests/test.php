<?php

//$f3=require(__DIR__.'/lib/base.php'); // path to f3 
$f3=require('../lib/base.php'); // path to f3

// Set up
$test=new Test;
include('../app/controller.php');
include('../app/service.php');


//$f3->mock('GET /form');
$f3->set('QUIET',TRUE); 
$f3->mock('POST http://node2.beta.codenvy.com:40496/project-0igw/public_html/form', array('email'=>'adriang_1174@hotmail.com','edad'=>'42','sexo'=>'M','op1'=>'Y','op2'=>'Y','conoce'=>'Y','donde'=>'web'));
//$res = $f3->('PARAMS["email"]');
//$test->expect(
  //  $_POST === array('email'=>'adriang_1174@hotmail.com','edad'=>'42','sexo'=>'M','op1'=>'Y','op2'=>'Y','conoce'=>'Y','donde'=>'web'),
  //  'POST OK'
//);
//$f3->set('QUIET',FALSE); // allow test results to be shown later
//$f3->clear('ERROR');  // clear any errors


// Display the results; not MVC but let's keep it simple
foreach ($test->results() as $result) {
    echo $result['text'].'<br>';
    if ($result['status'])
        echo 'Pass';
    else
        echo 'Fail ('.$result['source'].')';
    echo '<br>';
}

?>
