import { Component, OnInit } from '@angular/core';

import { CRUDService } from 'src/app/service/crud.service';

@Component({
  selector: 'app-listar-empleado',
  templateUrl: './listar-empleado.component.html',
  styleUrls: ['./listar-empleado.component.css']
})
export class ListarEmpleadoComponent implements OnInit {

    Empleados:any;

  constructor(
    private CRUDService:CRUDService
  ) { }

  ngOnInit(): void {
    this.CRUDService.ObtenerEmpleados().subscribe(respuesta=>{
      console.log(respuesta);
      this.Empleados=respuesta;
    });
  }
  borrarRegistro(id:any, iControl:any){
    console.log(id);
    console.log(iControl);
    if(window.confirm('Desea borrar el registro ?')){
      this.CRUDService.borrarEmpleado(id).subscribe((respuesta)=>{
        this.Empleados.splice(iControl,1);
    });
    }
    
  }

}
