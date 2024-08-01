import { Component} from '@angular/core';
import { Employee } from './Model/Employee';
import { EmployeeserviceService } from './employeeservice.service';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})

export class AppComponent  {
  title = 'EMS-HandsOn';

  empdata:Employee={};
  getterempdata!:Employee[];

constructor(private employeeservice:EmployeeserviceService){
      //  console.log(this.employeeservice.getemployeedata());
       this.employeeservice.getemployeedata().then((employeedatagetter:Employee[])=>{
          this.getterempdata=employeedatagetter;
       })     
}

  insertemployee(employeedata:Employee)
  {
      this.empdata=employeedata
      // alert(this.empdata.empname)
      this.employeeservice.insertemployee(this.empdata)
  }
  
  
}
