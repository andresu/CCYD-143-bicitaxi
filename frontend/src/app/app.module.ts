import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';

import { PerfilPage } from "../pages/perfil/perfil";
import { TarifasPage } from "../pages/tarifas/tarifas";
import { LoginPage } from "../pages/login/login";
import { RegistroPage } from "../pages/registro/registro";
import { TabsPage_Bicitaxista } from '../pages/tabs-bicitaxista/tabs-bicitaxista';
import { HomePage_Bicitaxista } from '../pages/home-bicitaxista/home-bicitaxista';
import { ViajesPage_Bicitaxista } from "../pages/viajes-bicitaxista/viajes-bicitaxista";
import { GananciasPage } from "../pages/ganancias/ganancias";

import { TabsPage_Usuario } from '../pages/tabs-usuario/tabs-usuario';
import { HomePage_Usuario } from '../pages/home-usuario/home-usuario';
import { ViajesPage_Usuario } from "../pages/viajes-usuario/viajes-usuario";
import { GastosPage } from "../pages/gastos/gastos";

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

@NgModule({
  declarations: [
    MyApp,
    LoginPage,
    RegistroPage,
    PerfilPage,
    TarifasPage,
    TabsPage_Usuario,
    HomePage_Bicitaxista,
    ViajesPage_Bicitaxista,
    GananciasPage,
    TabsPage_Bicitaxista,
    HomePage_Usuario,
    ViajesPage_Usuario,
    GastosPage
  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp)
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    LoginPage,
    RegistroPage,
    PerfilPage,
    TarifasPage,
    TabsPage_Usuario,
    HomePage_Bicitaxista,
    ViajesPage_Bicitaxista,
    GananciasPage,
    TabsPage_Bicitaxista,
    HomePage_Usuario,
    ViajesPage_Usuario,
    GastosPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler}
  ]
})
export class AppModule {}

GananciasPage