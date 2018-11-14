import { Component } from '@angular/core';

import { HomePage_Bicitaxista } from '../home-bicitaxista/home-bicitaxista';
import { PerfilPage } from '../perfil/perfil';
import { TarifasPage } from '../tarifas/tarifas';
import { ViajesPage_Bicitaxista } from "../viajes-bicitaxista/viajes-bicitaxista";
import { GananciasPage } from "../ganancias/ganancias";

@Component({
  templateUrl: 'tabs-bicitaxista.html'
})
export class TabsPage_Bicitaxista {

  tab1Root = HomePage_Bicitaxista;
  tab2Root = PerfilPage;
  tab3Root = TarifasPage;
  tab4Root = ViajesPage_Bicitaxista;
  tab5Root = GananciasPage;
  constructor() {

  }
}


