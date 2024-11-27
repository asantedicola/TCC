import {aggregate, createDirectus, readItems, rest} from "@directus/sdk";
import {useState} from "react";
import client from "./api";

const PAGE_SIZE = 10;

async function fetchItems(collection, filter, page) {
   const offset = (page - 1) * PAGE_SIZE;
   return await client.request(readItems(collection, {
      limit: PAGE_SIZE,
      offset,
      filter,
      fields:["*","instituicao_id.*","instituicao_id.id_usuario.*"]
   }));

}

async function countItems(collection, filter) {
   return await client.request(aggregate(collection, {
      aggregate: {count: "*"},
      query: {
         filter
      }
   }));

}

const useApi = () => {

   const [servicos, setServicos] = useState([]);
   const [servicosTotal, setServicosTotal] = useState(0);

   return {
      pageSize: PAGE_SIZE,
      getServicos: async (query, page) => {
         let filter = {};
         if(typeof query === 'string' && query.trim()){
            filter = {
               _or: [{
                  titulo: {
                     _contains: query
                  },
               }, {
                  descricao: {
                     _contains: query
                  }
               }]
            }
         }   
         else if (typeof query === 'object' && query)  {
            filter = { _and: [query]}
         }
         setServicosTotal((await countItems("Servico", filter))?.[0]?.count)
         setServicos(await fetchItems("Servico", filter, page));
      },
      servicos,
      servicosTotal,
      servicosTotalPages: Math.ceil(servicosTotal / PAGE_SIZE)
   }

}

export default useApi;
