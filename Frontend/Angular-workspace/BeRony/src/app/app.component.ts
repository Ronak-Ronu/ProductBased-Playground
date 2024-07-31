import { Component, OnInit } from '@angular/core';
import { Service1Service } from './service1.service';
declare var require: any

@Component({
  selector: 'rony-root',
  templateUrl: './app.component.html',
  
  styleUrl: './app.component.css'
})

export class AppComponent  {

  title = 'Angular Practice Application'
  pagerouted:boolean=true
  roletype="user"
  name:string="User"
  isedit:boolean=false
  constructor(private nameforservice:Service1Service)
  {
      this.name=nameforservice.displayname(this.name);
  
  }

  updaterole(role:string)
  {
    this.roletype=role
  }

  editclicked()
  {
      this.isedit=!this.isedit;
      // localStorage.setItem(this.roletype,this.name)
      // console.log(localStorage.getItem("user"));

  }

}
