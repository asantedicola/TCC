import { useNavigate } from "react-router-dom";
import Register2 from "./register2";
import { useState } from "react";
import { createDirectus, createItem, rest } from "@directus/sdk";
import client from "../api/api";

const Register = () => {

   const [sucesso, setSucesso] = useState(false);
   const [nome, setNome] = useState("");
   const [endereco, setEndereco] = useState("");
   const [area_atuacao, setArea_atuacao] = useState("");
   const [telefone, setTelefone] = useState("");
   const [email, setEmail] = useState("");
   const [slogan, setSlogan] = useState("");
   
   
   return sucesso
      ? <Register2 />
      : <div className="container w-25 m-5 p-3 bg-body-secondary rounded-5 border border-4 border-primary needs-validation" noValidate>
         <h2>Nova Conta Instituição</h2>
         <form className="row g-3" id="institutionForm">
            <div className="col-12">
               <label htmlFor="name" className="form-label">Nome</label>
               <input type="text" className="form-control" id="name" placeholder="Nome completo" required value={nome} onChange={(e)=>setNome(e.target.value)}/>
            </div>
            <div className="col-12">
               <label htmlFor="slogan" className="form-label">Slogan</label>
               <input type="text" className="form-control" id="slogan" placeholder="Slogan" required value={slogan} onChange={(e)=>setSlogan(e.target.value)}/>
            </div>
            <div className="col-12">
               <label htmlFor="area" className="form-label">Área de Atuação</label>
               <input type="text" className="form-control" id="area" placeholder="Área de Atuação" required value={area_atuacao} onChange={(e)=>setArea_atuacao(e.target.value)}/>
            </div>
            <div className="col-12">
               <label htmlFor="email" className="form-label">Email</label>
               <input type="email" className="form-control" id="email" placeholder="email@instituicao.com" required value={email} onChange={(e)=>setEmail(e.target.value)}/>
            </div>
            <div className="col-12">
               <label htmlFor="address" className="form-label">Endereço</label>
               <input type="text" className="form-control" id="address" placeholder="Rua, Número, Apt. CEP" required value={endereco} onChange={(e)=>setEndereco(e.target.value)}/>
            </div>
            <div className="col-12">
               <label htmlFor="phonenumber" className="form-label">Telefone</label>
               <input type="text" className="form-control" id="phonenumber" placeholder="(XX) 99999-0000" value={telefone} onChange={(e)=>setTelefone(e.target.value)}/>
            </div>
            <div className="col-12 text-end">
               <button
                  className="btn btn-primary"
                  type="button"
                  onClick={(e) => {
                     const form = document.getElementById('institutionForm');
                     if (form.checkValidity()) {
                        client.request(createItem("Instituicao", { area_atuacao, endereco, slogan, id_usuario : {nome, telefone, email} }))
                        setSucesso(true)
                     } else {
                        form.reportValidity(); // Mostra os erros de validação
                     }
                  }}
               >            Cadastrar
               </button>
            </div>
         </form>
      </div>

}

export default Register;
