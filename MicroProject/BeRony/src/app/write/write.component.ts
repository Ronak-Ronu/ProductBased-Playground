import { Component } from '@angular/core';
import { WriteModel } from '../Models/writemodel';
import { WriteserviceService } from '../writeservice.service';

@Component({
  selector: 'app-write',
  templateUrl: './write.component.html',
  styleUrl: './write.component.css'
})
export class WriteComponent {
  constructor(private writeservice:WriteserviceService){  }

  publishblog(publishdata:WriteModel) {
     
    this.writeservice.publishblog(publishdata);
    console.log(publishdata.bodyofcontent);
    
  }
}
