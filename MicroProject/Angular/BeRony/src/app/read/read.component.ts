import { Component, OnInit } from '@angular/core';
import { WriteserviceService } from '../writeservice.service';
import { WriteModel } from '../Models/writemodel';
import { ActivatedRoute } from '@angular/router';
// import { Router } from '@angular/router';

@Component({
  selector: 'app-read',
  templateUrl: './read.component.html',
  styleUrl: './read.component.css'
})
export class ReadComponent implements OnInit{
  blogs: WriteModel[] = [];
  ngOnInit(): void {
    this.readblogdata()
    
  }

  constructor(private readsevice:WriteserviceService){}

  
  readblogdata(){
    this.readsevice.getpublishpostdata().subscribe(
      (data:WriteModel[])=>{
          this.blogs=data
          console.log(this.blogs);
          
      }
    )
  }
  


  getid(item:WriteModel)
  {
    console.log(item.id);
    console.log(item.title);

  }


  deletepost(post:WriteModel)
  {
    this.readsevice.deletepostbyid(post.id)
    this.ngOnInit()
  }
  


}
