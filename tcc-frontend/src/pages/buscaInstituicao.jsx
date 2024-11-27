import { readItem } from '@directus/sdk';
import { useEffect, useState } from 'react';
import { Link, useParams, useSearchParams } from 'react-router-dom';
import Services from '../features/services';
import 'bootstrap';
import client from '../api/api';

const BuscaInstituicao = () => {

   const { id } = useParams();
   const [it, setIt] = useState(null);

   const [searchParams, setSearchParams] = useSearchParams();
   const page = Number(searchParams.get("page") || "1");
   console.log(id)
   // Obter o parâmetro "id" da URL
   useEffect(() => {

      client.request(readItem('Instituicao', id, { fields: ["*", "id_usuario.*"] })).then(r => {
         setIt(r)
      })
   }, [id])

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

   return it && (
      <div className="d-flex flex-column justify-content-center align-items-center vh-100">
         <div className="card w-100" style={{ maxWidth: "900px" }}>
            <div className="card-header">
               <div className="d-flex justify-content-between align-items-center">
                  <div>
                     <h3 className="card-title">{it.id_usuario.nome}</h3>
                     <p className="card-text">{it.slogan}</p>
                  </div>
                  <Link className="nav-link"
                     style={{
                        color: 'blue',
                        textDecoration: 'underline',
                        fontSize: '25px'
                     }}
                     to="/">Doações
                  </Link>
               </div>
            </div>
            <div className="card-body">
               <ul class="list-group list-group-flush">
                  <li class="list-group-item">{it.endereco}</li>
                  <li class="list-group-item">{it.area_atuacao}</li>
                  <li class="list-group-item">{formatarTelefone(it.id_usuario.telefone)}</li>
                  <li class="list-group-item">{it.email}</li>

               </ul>
               <section>
                  <h5>Servicoes da Instituicao</h5>
                  <Services query={{ instituicao_id: id }}
                     page={page}
                     onPageChange={(newPage) => {
                        searchParams.set("page", newPage);
                        setSearchParams(Object.fromEntries(searchParams.entries()))
                     }} />
               </section>
            </div>
         </div>

      </div>
   );
};

export default BuscaInstituicao;