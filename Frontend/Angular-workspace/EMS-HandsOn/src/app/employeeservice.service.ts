import {  Injectable } from '@angular/core';
import { Employee } from './Model/Employee';
// import { Observable } from 'rxjs';

@Injectable()
export class EmployeeserviceService {

  constructor() {}
  // : Observable<Employee>
  url = 'http://localhost:3004/employees';
  insertemployee(empdata:Employee){
    alert(empdata.empname)
  //  return this.http.post(this.url,empdata);

  }
  
  async getemployeedata(): Promise<Employee[]> {
    const data = await fetch(this.url);
    return await data.json();
  }


}
