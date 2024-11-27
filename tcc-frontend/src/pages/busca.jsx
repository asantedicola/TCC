import {useSearchParams} from "react-router-dom";
import Services from "../features/services";

const Busca = () => {
   const [searchParams, setSearchParams] = useSearchParams();

   const query = searchParams.get("query");
   const page = Number(searchParams.get("page") || "1");
   return <Services query={query}
                    page={page}
                    onPageChange={(newPage) => {
                       searchParams.set("page", newPage);
                       setSearchParams(Object.fromEntries(searchParams.entries()))
                    }}/>
}

export default Busca;
