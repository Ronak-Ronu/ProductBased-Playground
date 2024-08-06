import { Component} from '@angular/core';
import { Employee } from './Model/Employee';
import { EmployeeserviceService } from './employeeservice.service';
import { Observable } from 'rxjs';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})

export class AppComponent  {
  title = 'EMS-HandsOn';

  empdata:Employee={
    id:0,
    empname:" ",
    empsalary:0
  };
  // empdata=new Employee();
  result:string;

  // getterdata!:Employee;

  employeearr!:Employee[];

  flag:boolean=false

  employeefind!:Employee;

  findflag=false;
  constructor(private employeeservice:EmployeeserviceService){
        this.result=" "
       
        // this.employeeservice.getemployee().subscribe({
        //   next:(data:Employee)=>{
        //       this.getterdata=data
        //   }
        // });
  }

  insertemployee(employeedata:Employee)
  {
      this.empdata=employeedata
      // alert(this.empdata.empname)
     
      this.result=this.employeeservice.insertemployee(this.empdata)
  }
  

  updateemployee(employeedata:Employee)
  {

    this.result=this.employeeservice.updateemployee(employeedata)

  }



  deleteemployee(emp:Employee)
  {

    this.result=this.employeeservice.deleteemployee(emp.id)

  }
  
  
  findallemployee()
  {
    this.employeearr=this.employeeservice.findallemp();
    this.flag=true
  }

  findemployee(emp:Employee)
  {
    this.employeeservice.findemployee(emp.id).subscribe(data=>  this.employeefind=data  )
    console.log(this.employeefind);
    this.findflag=!this.findflag;
    
  }
  
}
