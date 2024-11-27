import { Link } from "react-router-dom";
import useApiInstituicoes from "../api/apiInstituicoes";
import { useEffect } from "react";

const BuscaInstituicoes = ({
   query,
   page,
   onPageChange
}) => {

   const {
      getInstituicoes,
      instituicoes,
      instituicoesTotal,
      instituicoesTotalPages
   } = useApiInstituicoes();

   const handleChangePage = (pageChange) => {
      console.log("changing page to", pageChange);
      if (pageChange !== page && pageChange >= 1 && pageChange <= instituicoesTotalPages) {
         onPageChange(pageChange);
      }
   }

   const formatarTelefone = (telefone) => {
      if (!telefone) return "N/A";
      // Remove caracteres não numéricos
      const numero = telefone.replace(/\D/g, '');
   
      // Formata o telefone se tiver o tamanho esperado (11 dígitos para números brasileiros)
      if (numero.length === 11) {
         return `(${numero.slice(0, 2)}) ${numero.slice(2, 7)}-${numero.slice(7)}`;
      }
   
      return telefone; // Retorna o valor original se não tiver o formato esperado
   };

   useEffect(() => {
      getInstituicoes(query, page);
      // eslint-disable-next-line react-hooks/exhaustive-deps
   }, [query, page]);

   return (
      <div className="container my-3">
         <table className="table table-striped table-responsive border rounded-2 overflow-hidden">
            <thead>
               <tr>
                  <th scope="col">Nome</th>
                  <th scope="col">Area de Atuação</th>
                  <th scope="col">Telefone</th>
               </tr>
            </thead>
            {instituicoes.length !== 0 && (
               <tbody>
                  {instituicoes.map((instituicao, index)=> (
                     <tr key={index}>
                        <th scope="row">
                           {instituicao.id_usuario ? (<Link to={`/instituicao/${instituicao.id}`}>{instituicao.id_usuario.nome}</Link>) : "N/A"} 
                        </th>
                        <td>{instituicao.area_atuacao}</td>
                        <td>
                           {instituicao.id_usuario ? formatarTelefone(instituicao.id_usuario.telefone): "N/A"} 
                        </td>
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
                     Página {page} de {instituicoesTotalPages || 1}
                  </span>
               </li>
               <li className="page-item">
                  <button
                     type="button"
                     className={"page-link" + (page >= instituicoesTotalPages ? " disabled" : "")} // Desabilita o botão se estiver na última página
                     onClick={() => handleChangePage(page + 1)}
                  >
                     Próxima
                  </button>
               </li>
               <li className="page-item disabled flex-fill text-end">
                  <span className="page-link">
                     Mostrando {instituicoes.length} de {instituicoesTotal} resultados encontrados.
                  </span>
               </li>
            </ul>
         </nav>
      </div>
   );
}

export default BuscaInstituicoes;