﻿import caurina.transitions.Tweener;class as.InterfazResultados{	var data_PiePagina:String = "Resultados";	////Intento Paso	var data_Titulo:String = "¡Felicitaciones!";	var data_ParrafoUno:String = "Aprobaste satisfactoriamente la evaluación y lo más importante es que ahora tienes las habilidades para detectar y prevenir posibles fraudes con documentos de identificación falsos o adulterados.";	var data_ParrafoDos:String = "Si es tu 1er intento y quieres mejorar la nota, te invitamos a repasar el contenido y presentar la evaluación antes de salir del curso. En caso de ser tu 2do intento o no querer mejorar la nota, puedes salir del curso una vez hayas terminado el contenido.";	////1 Intento NO Paso	var data_Titulo_dos:String = "¡Desafortunadamente!";	var data_ParrafoUno_dos:String = "No alcanzaste el puntaje mínimo requerido para aprobar la evaluación final.";	var data_ParrafoDos_dos:String = "Te recomendamos repasar nuevamente el contenido del curso antes de realizar tu 2do intento, con el fin que puedas obtener el puntaje requerido.";	////2 Intento NO Paso	var data_Titulo_tres:String = "¡Desafortunadamente!";	var data_ParrafoUno_tres:String = "No alcanzaste el puntaje mínimo requerido para aprobar la evaluación final.";	var data_ParrafoDos_tres:String = "La nota almacenada será la más alta obtenida entre tus dos intentos.";		////2 Intento paso Pero no con 100 y toca repasar	var data_Titulo_cuatro:String = "¡Felicitaciones!";	var data_ParrafoUno_cuatro:String = "prueba";	var data_ParrafoDos_cuatro:String = "preuba 2";	////__________________________________________________	public function InterfazResultados()	{	}	public function f_Resultados(_mc:MovieClip, _MenuInstrucciones:MovieClip, _puntaje:Number, _iteraciones:Number, _images:MovieClip)	{		_images._visible = false;		//trace("Mi texto "+_MenuInstrucciones.preguntas_txt.text);		//////Variable para modificar		var tempPuntaje:String = String(_puntaje * 100);		if (_iteraciones == 20)		{			if (_puntaje <= 0.7)			{				_mc._visible = true;				_mc.curso_txt.text = "Puntaje obtenido: " + tempPuntaje + " de 100 ";				_MenuInstrucciones.preguntas_txt.text = data_PiePagina;				_MenuInstrucciones.txt_Porcentaje.text = "100%";				_MenuInstrucciones.progreso_mc.gotoAndStop(100);				_mc.titulo_txt.text = data_Titulo_tres;				_mc.msj_txt.text = data_ParrafoUno_tres;				_mc.textoFinal_txt.text = data_ParrafoDos_tres;			}			else			{				_mc._visible = true;				_mc.curso_txt.text = "Puntaje obtenido: " + tempPuntaje + " de 100 ";				_MenuInstrucciones.progreso_mc.gotoAndStop(100);				_MenuInstrucciones.preguntas_txt.text = data_PiePagina;				_MenuInstrucciones.txt_Porcentaje.text = "100%";				_mc.titulo_txt.text = data_Titulo;				_mc.msj_txt.text = data_ParrafoUno;				_mc.textoFinal_txt.text = data_ParrafoDos;			}		}		else		{			if (_puntaje <= 0.7)			{				_mc._visible = true;				_mc.curso_txt.text = "Puntaje obtenido: " + tempPuntaje + " de 100 ";				_MenuInstrucciones.preguntas_txt.text = data_PiePagina;				_MenuInstrucciones.txt_Porcentaje.text = "100%";				_MenuInstrucciones.progreso_mc.gotoAndStop(100);				_mc.titulo_txt.text = data_Titulo_dos;				_mc.msj_txt.text = data_ParrafoUno_dos;				_mc.textoFinal_txt.text = data_ParrafoDos_dos;			}			else			{				if(_puntaje >= 0.8 && _puntaje < 1)				{					_mc._visible = true;					_mc.curso_txt.text = "Puntaje obtenido: " + tempPuntaje + " de 100 ";					_MenuInstrucciones.progreso_mc.gotoAndStop(100);					_MenuInstrucciones.preguntas_txt.text = data_PiePagina;					_MenuInstrucciones.txt_Porcentaje.text = "100%";					_mc.titulo_txt.text = data_Titulo_cuatro;					_mc.msj_txt.text = data_ParrafoUno_cuatro;					_mc.textoFinal_txt.text = data_ParrafoDos_cuatro;				}				else				{					_mc._visible = true;					_mc.curso_txt.text = "Puntaje obtenido: " + tempPuntaje + " de 100 ";					_MenuInstrucciones.progreso_mc.gotoAndStop(100);					_MenuInstrucciones.preguntas_txt.text = data_PiePagina;					_MenuInstrucciones.txt_Porcentaje.text = "100%";					_mc.titulo_txt.text = data_Titulo;					_mc.msj_txt.text = data_ParrafoUno;					_mc.textoFinal_txt.text = data_ParrafoDos;				}											}		}	}}