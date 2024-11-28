import {Link, Outlet, useSearchParams} from 'react-router-dom';
import Services from '../features/services';
import 'bootstrap';
import useApiInstituicoes from "../api/apiInstituicoes";

const BuscaInstituicao = () => {

   const {selected} = useApiInstituicoes();

   const [searchParams, setSearchParams] = useSearchParams();
   const page = Number(searchParams.get("page") || "1");

   const formatarTelefone = (telefone) => {
      if (!telefone) {
         return "N/A";
      }
      // Remove caracteres não numéricos
      const numero = telefone.replace(/\D/g, '');

      // Formata o telefone se tiver o tamanho esperado (11 dígitos para números brasileiros)
      if (numero.length === 11) {
         return `(${numero.slice(0, 2)}) ${numero.slice(2, 7)}-${numero.slice(7)}`;
      }

      return telefone; // Retorna o valor original se não tiver o formato esperado
   };

   return selected && (
         <div className="d-flex flex-column justify-content-center align-items-center vh-100">
            <div className="card w-100" style={{maxWidth: "900px"}}>
               <div className="card-header">
                  <div className="d-flex justify-content-between align-items-center">
                     <div>
                        <h3 className="card-title">{selected.id_usuario.nome}</h3>
                        <p className="card-text">{selected.slogan}</p>
                     </div>
                     <Link

                           to={`/instituicao/${selected.id}/doacoes`}>Doações
                     </Link>
                  </div>
               </div>
               <div className="card-body">
                  <ul className="list-group list-group-flush">
                     <li className="list-group-item">{selected.endereco}</li>
                     <li className="list-group-item">{selected.area_atuacao}</li>
                     <li className="list-group-item">{formatarTelefone(selected.id_usuario.telefone)}</li>
                     <li className="list-group-item">{selected.email}</li>
                  </ul>
                  <section>
                     <h5>Servicos da Instituicao</h5>
                     <Services query={{instituicao_id: selected.id}}
                               page={page}
                               onPageChange={(newPage) => {
                                  searchParams.set("page", newPage);
                                  setSearchParams(Object.fromEntries(searchParams.entries()))
                               }}/>
                  </section>
               </div>
            </div>
         </div>
   );
};

export default BuscaInstituicao;
