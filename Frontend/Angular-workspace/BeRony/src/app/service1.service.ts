import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class Service1Service {
    displayname(name:string):string
    {
      return name;
    }

}
