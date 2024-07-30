import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms'
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NewcmpComponent } from './newcmp/newcmp.component';

@NgModule({           // decorator->modify the behavior of the class
  declarations: [     // delacre all component
    AppComponent, NewcmpComponent, 
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule       // to use NgModule
  ],
  providers: [],
  bootstrap: [AppComponent] // to specify root component which loaded first
})
export class AppModule { }
