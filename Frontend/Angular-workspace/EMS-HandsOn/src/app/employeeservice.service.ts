import {  Injectable } from '@angular/core';
import { Employee } from './Model/Employee';
import { HttpClient } from '@angular/common/http';
import { empty, Observable } from 'rxjs';
// import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'  
})

export class EmployeeserviceService {
  url:string;
  employeearr!:Employee[];
  constructor(private http:HttpClient) {
    this.url = 'http://localhost:3004/employees';
  }

  insertemployee(empdata:Employee){
    // alert(empdata.empname)
   this.http.post<Employee>(this.url,empdata).subscribe();
   console.log(empdata.id);
   return "data inserted"
  }
  
  updateemployee(empdata:Employee){
    // alert(empdata.empname)
    this.http.put<Employee>(this.url+'/'+empdata.id,empdata).subscribe();
   console.log(empdata.id);
   return "data updated"
  }


  deleteemployee(id:number)
  {
    this.http.delete<Employee>(this.url+"/"+id).subscribe();
    return "data deleted"
    
  }
  
  
  
  getemployee():Observable<Employee>{
    // alert(empdata.empname)
    console.log("getter service");
    return this.http.get<Employee>(this.url);
  }
  

  findallemp()
  {
    this.http.get<Employee[]>(this.url).subscribe(findedata => this.employeearr=findedata);
    return this.employeearr;
  }

  findemployee(id:number):Observable<Employee>
  {
    return this.http.get<Employee>(this.url+"/"+id)
  }
  
  

} 
