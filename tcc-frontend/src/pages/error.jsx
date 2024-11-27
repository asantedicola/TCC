import {useRouteError} from "react-router-dom";

export default function ErrorPage() {
   const error = useRouteError();
   console.error(error);

   const errorMessage = error ? error.statusText || error.message : false;
   return (
         <div className="d-flex flex-column w-100 text-light align-items-center my-5">
            <h1 className="display-1 fw-bold text-warning">O P A !</h1>
            <p className="display-6 my-4">Ocorreu um erro inesperado.</p>
            {errorMessage && <p className="alert alert-danger w-auto">
               <i>{errorMessage}</i>
            </p>}
         </div>
   );
}
