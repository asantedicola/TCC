import {useSearchParams} from "react-router-dom";
import BuscaInstituicoes from "../features/buscaInstituicoes";

const Instituicao = () => {
   const [searchParams, setSearchParams] = useSearchParams();

   const query = searchParams.get("query");
   const page = Number(searchParams.get("page") || "1");
   return <BuscaInstituicoes query={query}
                    page={page}
                    onPageChange={(newPage) => {
                       searchParams.set("page", newPage);
                       setSearchParams(Object.fromEntries(searchParams.entries()))
                    }}/>
}

export default Instituicao;