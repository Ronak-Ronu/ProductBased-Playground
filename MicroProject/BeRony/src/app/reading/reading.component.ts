import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { WriteModel } from '../Models/writemodel';
import { WriteserviceService } from '../writeservice.service';
// import { WriteserviceService } from '../writeservice.service';

@Component({
  selector: 'app-reading',
  templateUrl: './reading.component.html',
  styleUrls: ['./reading.component.css']
})
export class ReadingComponent implements OnInit {
  post!:WriteModel

  id:any;
  constructor(private service:WriteserviceService,private router:ActivatedRoute) {}
  ngOnInit(): void {
    console.log("post id"+this.router.snapshot.paramMap.get("postid"));
    this.id=this.router.snapshot.paramMap.get("postid")
    console.log("post id"+this.id);
    
   this.service.getpublishpostdatabyid(this.id).subscribe((data:WriteModel)=>{
    this.post = data as WriteModel;
    console.log(this.post);
  })
    
  }
  
}
