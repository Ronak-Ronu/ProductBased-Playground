import {NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { FormsModule } from '@angular/forms'
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NewcmpComponent } from './newcmp/newcmp.component';
import { PracticengforComponent } from './practicengfor/practicengfor.component';
import { HomeComponent } from './home/home.component';
import { AboutComponent } from './about/about.component';
import { ContactComponent } from './contact/contact.component';
import { RouterModule} from '@angular/router';
import { Service1Service } from './service1.service';


const routes  = [
  {path: 'home', component: HomeComponent},
  {path: 'contact', component: ContactComponent},
  {path: 'about', component: AboutComponent},
  {path: 'newcmp', component: NewcmpComponent}

];


@NgModule({           // decorator->modify the behavior of the class
  declarations: [     // delacre all component
    AppComponent, NewcmpComponent, PracticengforComponent, HomeComponent, AboutComponent, ContactComponent, 
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    RouterModule.forRoot(routes)  // to use NgModule
  ],
  providers: [ Service1Service ],  // importing/register all  services
  bootstrap: [AppComponent] // to specify root component which loaded first
})
export class AppModule { }
