import React from "react";

const DonationSuccess = ({instituicao}) => {
   return (
         <div className="m-auto w-25 p-3">
            <div className="card rounded-3 bg-body-secondary rounded-5 border border-4 border-success" style={{
               backgroundColor: "rgba(255, 255, 255, 0.8)",
               border: "1px solid #ddd"
            }}>
               <div className="card-body text-center">
                  <h5 className="card-title fs-2">Sua Doacao foi recebida com sucesso!</h5>
                  <p className="card-text fs-4">A instituicao {instituicao} agradece pela sua doacao.</p>
               </div>
            </div>
         </div>
   );
}

export default DonationSuccess;
