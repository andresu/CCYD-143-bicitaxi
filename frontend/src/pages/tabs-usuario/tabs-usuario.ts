import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';

import { HomePage_Usuario } from '../home-usuario/home-usuario';
import { PerfilPage } from '../perfil/perfil';
import { TarifasPage } from '../tarifas/tarifas';
import { ViajesPage_Usuario } from "../viajes-usuario/viajes-usuario";
import { GastosPage } from "../gastos/gastos";

@Component({
  selector: 'page-tabs-usuario',
  templateUrl: 'tabs-usuario.html'
})
export class TabsPage_Usuario {
  tab1Root = HomePage_Usuario;
  tab2Root = PerfilPage;
  tab3Root = TarifasPage;
  tab4Root = ViajesPage_Usuario;
  tab5Root = GastosPage;
  constructor(public navCtrl: NavController) {}

}
