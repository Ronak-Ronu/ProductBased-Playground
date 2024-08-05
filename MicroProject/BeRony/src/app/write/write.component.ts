import { Component, OnInit } from '@angular/core';
import { WriteModel } from '../Models/writemodel';
import { WriteserviceService } from '../writeservice.service';
import { TitleCasePipe } from '@angular/common';

@Component({
  selector: 'app-write',
  templateUrl: './write.component.html',
  styleUrl: './write.component.css'
})
export class WriteComponent implements OnInit {
  draftblogs:WriteModel[]=[]
  edittitle:string=" "
  editbodycontent:string=" "
  editendnotecontent:string=" "
  editclicked:boolean=false


  constructor(private writeservice:WriteserviceService){  }

  ngOnInit(): void {
    //Called after the constructor, initializing input properties, and the first call to ngOnChanges.
    //Add 'implements OnInit' to the class.
    this.readdraftblog()
  }
  publishblog(publishdata:WriteModel) {
     
    this.writeservice.publishblog(publishdata);
    console.log(publishdata.bodyofcontent);
  }

  publishdraft(draftdata:WriteModel)
  {
    this.writeservice.publishblog(draftdata);
    this.writeservice.deletedraft(draftdata.id);
  }


  readdraftblog()
  {
    this.writeservice.getdraftblog().subscribe(
      (data:WriteModel[])=>{
            this.draftblogs=data
    })

  }

  saveasdraft(draftdata:WriteModel)
  {
    this.writeservice.draftblog(draftdata);
    console.log(this.draftblogs); 

  }

  editdraft(draftdata:WriteModel)
  {
    this.edittitle=draftdata.title
    this.editbodycontent=draftdata.bodyofcontent
    this.editendnotecontent=draftdata.endnotecontent
    this.editclicked=true
    console.log(this.edittitle);
  }

}
