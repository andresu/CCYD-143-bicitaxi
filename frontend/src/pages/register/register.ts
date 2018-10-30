import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { RegisterBicitaxistaPage } from '../register-bicitaxista/register-bicitaxista';

@Component({
  selector: 'page-register',
  templateUrl: 'register.html'
})
export class RegisterPage {

  constructor(public navCtrl: NavController) {

  }
  goRegisterBicitaxista(){
      this.navCtrl.push(RegisterBicitaxistaPage)
  }

}
