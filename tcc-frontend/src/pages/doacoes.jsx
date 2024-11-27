import useApiInstituicoes from "../api/apiInstituicoes";

const Doacoes = () => {
    const {
        instituicoes
    } = useApiInstituicoes();

    return <div className="container w-25 m-5 p-3 bg-body-secondary rounded-5 border border-4 border-primary needs-validation"
        noValidate>
        <h2>Faça sua Doação</h2>
        <form className="row g-3">
            <div className="col-12">
                <label htmlFor="type" className="form-label">Instituição</label>
                <select id="type" className="form-select" aria-label="Default select example" required>
                    {instituicoes.map((instituicao) => (
                            <th scope="row">
                                <option key={instituicao.id} value={instituicao.id_usario}>
                                    {instituicao.id_usuario.nome}
                                </option>
                            </th>
                    ))}
                </select>
            </div>
            <div className="col-12">
                <label htmlFor="email" className="form-label">Valor</label>
                <input type="email" className="form-control" id="email" placeholder="R$ " required />
            </div>
            <div className="col-12">
                <label htmlFor="type" className="form-label">Tipo de Pagamento</label>
                <select id="type" className="form-select" aria-label="Default select example" required>
                    <option disabled selected>Pix, Cartão...</option>
                    <option value="instituicao">Pix</option>
                    <option value="voluntario">Cartão de Crédito</option>
                    <option value="voluntario">Cartão de Débito</option>
                </select>
            </div>
            <div className="col-12 text-end">
                <button type="submit" className="btn btn-primary">Confirmar</button>
            </div>
        </form>
    </div>
}

export default Doacoes;