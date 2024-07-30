import { Component } from '@angular/core';

@Component({
  selector: 'rony-root',
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'Angular Practice Application'

  roletype="admin"

  updaterole(role:string)
  {
    this.roletype=role
    
  }


}
