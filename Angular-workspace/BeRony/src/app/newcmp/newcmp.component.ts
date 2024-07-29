import { Component } from '@angular/core';

@Component({
  selector: 'app-newcmp',
  templateUrl: './newcmp.component.html',
  styleUrl: './newcmp.component.css'
})
export class NewcmpComponent {
  name:string;
  green:string;
  hidenames=false;
  constructor()
    {
      this.name="rony"
      this.green="green"
    }
  data:string[]=["ronak","ronu","dwight","michale","jim"]
  alertdata()
  {
    alert("Name : "+this.name)
  }
  updatedata(newname:string)
  {
    this.name=newname
  }
  resetdata()
  {
    this.name="Rony"
  }
  
  hideuserdata()
  {
    this.hidenames=!this.hidenames;
  }
}
