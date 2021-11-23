
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';

import { CRUDService } from 'src/app/service/crud.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-agregar-empleado',
  templateUrl: './agregar-empleado.component.html',
  styleUrls: ['./agregar-empleado.component.css']
})
export class AgregarEmpleadoComponent implements OnInit {

  formularioDeEmpleados: FormGroup;

  constructor(
    public formulario:FormBuilder,
    private CRUDService:CRUDService,
    private ruteador:Router

    ) { 


    this.formularioDeEmpleados=this.formulario.group({
        nombre:[''],
        apellidos:[''],
        cedula:[''],
        correo:[''],
        telefono:['']
    });
  }

  ngOnInit(): void {
  }

  enviarDatos():any {
    console.log("presionaste el boton");
    console.log(this.formularioDeEmpleados.value);

    this.CRUDService.AgregarEmpleado(this.formularioDeEmpleados.value).subscribe(respuesta=>{
      this.ruteador.navigateByUrl('/listar-empleado');
    });

    
  }
}
