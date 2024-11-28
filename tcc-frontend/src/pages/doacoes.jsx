import useApiInstituicoes from "../api/apiInstituicoes";
import client from "../api/api";
import {createItem} from "@directus/sdk";
import {useRef, useState} from "react";
import DonationSuccess from "./donationSuccess";

const Doacoes = () => {
   const {
      selected
   } = useApiInstituicoes();

   const loggedUser = {
      id: 1
   }

   const [valor, setValor] = useState(100);
   const [tipo, setTipo] = useState("");
   const [sucesso, setSucesso] = useState(false);

   const formRef = useRef(null);

   const donate = (e) => {
      e.preventDefault();
      const form = formRef.current;
      if (form.checkValidity()) {
         client.request(createItem("Doacoes", {
            valor,
            id_instituicao: selected.id,
            id_usuario: loggedUser?.id ?? 123,
            tipo_pagamento: tipo
         })).then(() => setSucesso(true))

      } else {
         form.reportValidity(); // Mostra os erros de validação
      }
   };

   return selected &&
         (sucesso
               ? <DonationSuccess instituicao={selected.id_usuario.nome}/>
               :
               <div className="container w-25 m-5 p-3 bg-body-secondary rounded-5 border border-4 border-primary needs-validation"
                    noValidate>
                  <h2>Faça sua Doação</h2>
                  <form ref={formRef} className="row g-3">
                     <div className="col-12">
                        <h5>Instituição {selected.id_usuario.nome}</h5>
                     </div>
                     <div className="col-12">
                        <label htmlFor="valor" className="form-label">Valor</label>
                        <div className="input-group">
                           <span className="input-group-text">R$</span>
                           <input type="number" className="form-control" id="valor" defaultValue={valor}
                                  onChange={e => setValor(Number(e.target.value))} required/>
                        </div>
                     </div>
                     <div className="col-12">
                        <label htmlFor="type" className="form-label">Tipo de Pagamento</label>
                        <select id="type" className="form-select" aria-label="Default select example"
                                defaultValue={tipo} required onChange={e => setTipo(e.target.value)}>
                           <option disabled value="">Selecione...</option>
                           <option value="Pix">Pix</option>
                           <option value="Cartão de Crédito">Cartão de Crédito</option>
                           <option value="Cartão de Débito">Cartão de Débito</option>
                           <option value="PayPal">PayPal</option>
                        </select>
                     </div>
                     <div className="col-12 text-end">
                        <button type="submit" className="btn btn-primary" onClick={donate}>Confirmar</button>
                     </div>
                  </form>
               </div>)
}

export default Doacoes;
