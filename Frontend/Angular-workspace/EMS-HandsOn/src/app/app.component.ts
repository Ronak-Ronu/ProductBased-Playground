import { Component } from '@angular/core';
import { Employee } from './Model/Employee';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'EMS-HandsOn';

  insertemployee(employeedata:Employee)
  {
      alert(employeedata.empid)
  }
}
