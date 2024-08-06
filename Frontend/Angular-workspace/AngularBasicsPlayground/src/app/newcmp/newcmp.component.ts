import { Component } from '@angular/core';
import { PracticengforComponent } from '../practicengfor/practicengfor.component';
@Component({
  selector: 'app-newcmp',
  templateUrl: './newcmp.component.html',
  styleUrl: './newcmp.component.css'
})
export class NewcmpComponent {
  name:string;
  green:string;
  visibility:boolean=false;
  newvar:string="";
  pickedcolor:string="black"
  constructor()
    {
      this.name="rony"
      this.green="green"
    }


  names:string[]=["ronak","ronu","dwight","michale","jim"];



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
  
  changevisiblity()
  {
    // this.hidenames=this.hidenames?false:true
    this.visibility= !this.visibility
  }
  changefontcolor(colorpicked:string)
  {
    this.pickedcolor=colorpicked
  }

}
