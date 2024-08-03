import { Component, OnInit } from '@angular/core';
import { WriteserviceService } from '../writeservice.service';
import { WriteModel } from '../Models/writemodel';

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

  constructor(private readsevice:WriteserviceService)
  {

  }
  readblogdata(){
    this.readsevice.getpublishpostdata().subscribe(
      (data:WriteModel[])=>{
          this.blogs=data
          console.log(this.blogs);
          
      }
    )
  }
  


}
