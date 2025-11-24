import { Routes } from '@angular/router';
import { HomePage } from './page/home-page/home-page';
import { MatierePage } from './page/matiere/matiere-page/matiere-page';
import { LoginPage } from './page/login-page/login-page';
import { authGuard } from './guard/auth-guard';

export const routes: Routes = [
    { path: '', component: HomePage, canActivate: [ authGuard ] },
    { path: 'home', component: HomePage, canActivate: [ authGuard ] },
    { path: 'login', component: LoginPage },
    { path: 'matiere', component: MatierePage, canActivate: [ authGuard ] }
];
