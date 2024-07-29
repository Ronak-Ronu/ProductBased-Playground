import { NgFor } from '@angular/common';
import { Component } from '@angular/core';

@Component({
  selector: 'rony-root', // 
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'BeRony';
  roletype="admin"
  updaterole(role:string)
  {
    this.roletype=role
  }
}
