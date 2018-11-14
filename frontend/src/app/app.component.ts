import { Component } from '@angular/core';
import { Platform } from 'ionic-angular';
import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';
//import { TabsPage_Bicitaxista } from '../pages/tabs-bicitaxista/tabs-bicitaxista';
//import { TabsPage_Usuario } from '../pages/tabs-usuario/tabs-usuario';


//import { RegistroPage } from "../pages/registro/registro";

//import { TarifasPage } from "../pages/tarifas/tarifas";
//import { ViajesPage_Usuario } from "../pages/viajes-usuario/viajes-usuario";
import { LoginPage } from '../pages/login/login';
import { AuthProvider } from '../providers/auth/auth';

@Component({
  templateUrl: 'app.html'
})
export class MyApp {
  rootPage:any = LoginPage;

  constructor(
     platform: Platform,
     statusBar: StatusBar,
     splashScreen: SplashScreen,
     private auth: AuthProvider
  ) {
    platform.ready().then(() => {
      // Okay, so the platform is ready and our plugins are available.
      // Here you can do any higher level native things you might need.
      /*
      this.auth.Session.subscribe(session=>{
        if(session){
            this.rootPage = 'TabsPage_Usuario';
        }
          else{
            this.rootPage = 'LoginPage';
          }
      });
      */
      statusBar.styleDefault();
      splashScreen.hide();
    });
  }
}
