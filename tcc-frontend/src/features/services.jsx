import { useEffect } from "react";
import useApi from "../api/apiServicos";
import { Link } from "react-router-dom";

const Services = ({
                     query,      
                     page,       
                     onPageChange 
                  }) => {

   const {
      getServicos,           
      servicos,              
      servicosTotal,         
      servicosTotalPages     
   } = useApi();

   const handleChangePage = (pageChange) => {

      if (pageChange !== page && pageChange >= 1 && pageChange <= servicosTotalPages) {
         onPageChange(pageChange); 
      }
   }

   useEffect(() => {
      getServicos(query, page); 
   }, [query, page]); 

   return (
      <div className="container my-3">
         <table className="table table-striped table-responsive border rounded-2 overflow-hidden">
            <thead>
               <tr>
                  <th scope="col">Título</th>         
                  <th scope="col">Descrição</th>       
                  <th scope="col">Carga Horária</th>   
                  {/* <th scope="col">Vagas</th>            */}
               </tr>
            </thead>
            {servicos.length !== 0 && (
               <tbody>
                  {servicos.map((servico, index) => (
                     <tr key={index}>
                        <th scope="row"><Link to={`/instituicao/${servico.instituicao_id.id}`}>{servico.titulo}</Link></th>

                        <td>{servico.descricao}</td>         
                        <td>{servico.carga_horaria} hora(s) por semana</td> 
                        {/* <td>{servico.vagas - servico.disponibilidade} de {servico.vagas}</td>  */}
                     </tr>
                  ))}
               </tbody>
            )}
         </table>

         <nav aria-label="...">
            <ul className="pagination">
               <li className="page-item">
                  <button
                     type="button"
                     className={"page-link" + (page <= 1 ? " disabled" : "")} 
                     onClick={() => handleChangePage(page - 1)}
                  >
                     Anterior
                  </button>
               </li>
               <li className="page-item active" aria-current="page">
                  <span className="page-link">
                     Página {page} de {servicosTotalPages || 1}
                  </span>
               </li>
               <li className="page-item">
                  <button
                     type="button"
                     className={"page-link" + (page >= servicosTotalPages ? " disabled" : "")} 
                     onClick={() => handleChangePage(page + 1)}
                  >
                     Próxima
                  </button>
               </li>
               <li className="page-item disabled flex-fill text-end">
                  <span className="page-link">
                     Mostrando {servicos.length} de {servicosTotal} resultados encontrados.
                  </span>
               </li>
            </ul>
         </nav>
      </div>
   );
}

export default Services;
