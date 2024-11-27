import Home from '../pages/home';
import Register from '../pages/register';
import Register2 from '../pages/register2';
import AboutUs from '../pages/about-us';
import Busca from '../pages/busca';
import App from "../App";
import {createBrowserRouter} from "react-router-dom";
import Instituicao from '../pages/instituicoes';
import Doacoes from '../pages/doacoes';
import RedesSociais from '../pages/redessociais';
import BuscaInstituicao from '../pages/buscaInstituicao';

const router = createBrowserRouter([
   {
      path: "/",
      element: <App/>,
      errorElement: <App hasError/>,
      children: [
         {
            path: "",
            element: <Home/>
         },
         {
            path: "busca",
            element: <Busca/>
         },
         {
            path: "instituicoes",
            element: <Instituicao/>
         },
         {
            path: "instituicao/:id",
            element: <BuscaInstituicao/>
         },
         {
            path: "doacoes",
            element: <Doacoes/>
         },
         {
            path: "cadastro",
            element: <Register/>
         },
         {
            path: "cadastro2",
            element: <Register2/>
         },
         {
            path: "redessociais",
            element: <RedesSociais/>
         },
         {
            path: "sobre_nos",
            element: <AboutUs/>
         }
      ]
   },
]);

export default router;
