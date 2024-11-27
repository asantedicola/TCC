import {aggregate, createDirectus, readItems, rest} from "@directus/sdk";
import {useState} from "react";
import client from "./api";

const PAGE_SIZE = 10;

// https://docs.directus.io/reference/filter-rules.html

async function fetchItemsInstituicoes(collection, filter, page) {
   const offset = (page - 1) * PAGE_SIZE;
   return await client.request(readItems(collection, {
      limit: PAGE_SIZE,
      offset,
      filter,
      fields:["*", "id_usuario.*"]
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

const useApiInstituicoes = () => {
   const [instituicoes, setInstituicoes] = useState([]);
   const [instituicoesTotal, setInstituicoesTotal] = useState(0);

   return {
      pageSize: PAGE_SIZE,
      getInstituicoes: async (query, page) => {
         const filter = query ? {
            _or: [
               { area_atuacao: { _contains: query } },
               { endereco: { _contains: query } }
            ],
            _and: [
               { id_usuario: { ativo: true}}
            ]
         } : {_and: [
            { id_usuario: { ativo: true}}
         ]};

         // Fetch total count
         setInstituicoesTotal((await countItems("Instituicao", filter))?.[0]?.count);

         // Fetch data including related usuario data
         const instituicoesData = await fetchItemsInstituicoes(
            "Instituicao",
            filter, 
            page
         );

         // Set the state with fetched instituicoes data including usuario reference
         setInstituicoes(instituicoesData);
      },
      instituicoes,
      instituicoesTotal,
      instituicoesTotalPages: Math.ceil(instituicoesTotal / PAGE_SIZE)
   }
}

export default useApiInstituicoes;
