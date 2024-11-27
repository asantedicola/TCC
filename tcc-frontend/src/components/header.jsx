import {Link, useNavigate, useParams} from "react-router-dom";
import {useState} from "react";

const Header = () => {
   const {query} = useParams();
   const navigate = useNavigate();
   const [searchQuery, setSearchQuery] = useState(query ?? "");

   return <nav className="navbar navbar-expand-lg bg-body-secondary shadow-lg border-bottom border-4 border-primary">
      <div className="container-fluid">
         <Link className="navbar-brand text-wrap text-center fw-bold text-primary rounded-start-pill"
               style={{width: "12rem"}} to="/">COMUNIDADE CONECTADA</Link>
         <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                 aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
         </button>
         <div className="collapse navbar-collapse mx-5" id="navbarNavAltMarkup">
            <div className="navbar-nav flex-grow-1 align-items-center">

               <form className="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search" onSubmit={(e) => {
                  e.preventDefault();
                  navigate("/busca" + (searchQuery ? "?query=" + encodeURIComponent(searchQuery) : ""))
               }}>
                  <div className="input-group">
                     <input type="search" className="form-control" placeholder="buscar serviços..." aria-label="Search"
                            defaultValue={searchQuery} onChange={e => setSearchQuery(e.target.value)}/>
                     <button type="submit" className="btn btn-primary">Buscar</button>
                  </div>
               </form>
               <Link className="nav-link" to="/instituicoes">Instituições</Link>
               <Link className="nav-link" to="/cadastro">Faça Parte</Link>
               {/* <Link className="nav-link" to="/doacoes">Doações</Link> */}
               <Link className="nav-link" to="/redessociais">Redes Sociais</Link>
               <div className="mx-auto"></div>
               <Link className="nav-link" to="http://cms.tcc.local">Login</Link>
            </div>
         </div>
      </div>
   </nav>;
}

export default Header;
