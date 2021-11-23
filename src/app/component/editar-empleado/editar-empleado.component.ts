import { Component, OnInit } from '@angular/core';

import { FormGroup, FormBuilder } from '@angular/forms';
import { CRUDService } from 'src/app/service/crud.service';

import { Router, ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-editar-empleado',
  templateUrl: './editar-empleado.component.html',
  styleUrls: ['./editar-empleado.component.css']
})
export class EditarEmpleadoComponent implements OnInit {
  formularioDeEmpleados: FormGroup;
  elID:any;
  constructor(
   private ActivatedRoute:ActivatedRoute,
   private CRUDService:CRUDService,
   public formulario:FormBuilder,
   private ruteador:Router 
  ) { 
    this.elID=this.ActivatedRoute.snapshot.paramMap.get('id');
    console.log(this.elID);
    this.CRUDService.obtenerEmpleado(this.elID).subscribe(
      respuesta=>{
        console.log(respuesta);
        this.formularioDeEmpleados.setValue({
          nombre:respuesta[0]['nombre'],  
          correo:respuesta[0]['correo'],
          apellidos:respuesta[0]['apellidos'],
          cedula:respuesta[0]['cedula'],
          telefono:respuesta[0]['telefono']
        });
      }
    );
    this.formularioDeEmpleados=this.formulario.group(
      {
      nombre:[''],
      correo:[''],
      apellidos:[''],
      cedula:[''],
      telefono:['']
      }
    );
  }

  ngOnInit(): void {
  }

  enviarDatos():any{
    console.log(this.elID);
    console.log(this.formularioDeEmpleados);
    this.CRUDService.EditarEmpleado(this.elID,this.formularioDeEmpleados.value).subscribe(()=>{
      this.ruteador.navigateByUrl('/listar-empleado');
    });
  }
}
