import React from "react";


const RedesSociais = () => {
   const socialLinks = [
      {
         name: "Facebook",
         url: "https://www.facebook.com/", // Link personalizado
         imgSrc: "/images/facebook_logo.png", // URL do logo
      },
      {
         name: "X",
         url: "https://x.com/", // Link personalizado
         imgSrc: "/images/X_logo.png", // URL do logo
      },
      {
         name: "Instagram",
         url: "https://www.instagram.com/", // Link personalizado
         imgSrc: "/images/instagram_logo.png", // URL do logo
      },
   ];

   return (
         <div className="w-25 m-5 p-3 vh-100">
            <div className="card rounded-3 bg-body-secondary rounded-5 border border-4 border-primary" style={{
               backgroundColor: "rgba(255, 255, 255, 0.8)",
               border: "1px solid #ddd"
            }}>
               <div className="card-body text-center">
                  <h5 className="card-title fs-4">Nos siga e compartilhe nossos links nas Redes Sociais</h5>
                  <p className="card-text fs-4">Click nos links para acessar:</p>
                  <ul className="list-unstyled">
                     {socialLinks.map((social, index) => (
                           <li key={index} className="mb-3 fs-3">
                              <a
                                    href={social.url}
                                    target="_blank"
                                    rel="noopener noreferrer"
                                    className="text-decoration-none d-flex align-items-center"
                              >
                                 <img
                                       src={social.imgSrc}
                                       alt={``}
                                       style={{
                                          width: "84px",
                                          marginRight: "10px"
                                       }}
                                 />
                                 {social.name}
                              </a>
                           </li>
                     ))}
                  </ul>
               </div>
            </div>
         </div>
   );
}

export default RedesSociais;
