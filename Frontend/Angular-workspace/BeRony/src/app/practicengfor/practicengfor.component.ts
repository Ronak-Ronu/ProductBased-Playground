import { Component, Input, output,EventEmitter } from '@angular/core';


@Component({
  selector: 'app-practicengfor',
  templateUrl: './practicengfor.component.html',
  styleUrl: './practicengfor.component.css'
})

export class PracticengforComponent {
  
   @Input() names:string[]=[];
   @Input() visibility:boolean=true;
   updatedata(name:string):void{
   }


}
