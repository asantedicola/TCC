import {Link} from "react-router-dom";

const Footer = () => {
   return <footer className="py-3 bg-body-secondary shadow-lg border-top border-4 border-primary">
      <ul className="nav justify-content-center border-bottom pb-3 mb-3">
         <li className="nav-item"><Link className="nav-link px-2 text-body-secondary" to="/">Início</Link></li>
         <li className="nav-item"><Link className="nav-link px-2 text-body-secondary" to="/busca">Busque</Link></li>
         <li className="nav-item"><Link className="nav-link px-2 text-body-secondary" to="/cadastro">Faça Parte</Link>
         </li>
         <li className="nav-item"><Link className="nav-link px-2 text-body-secondary" to="/sobre_nos">Sobre nós</Link>
         </li>
      </ul>
      <p className="text-center text-body-secondary">© 2024 Comunidade Conectada</p>
   </footer>
}

export default Footer;
