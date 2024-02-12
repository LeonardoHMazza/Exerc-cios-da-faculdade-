//Função deve ser assíncrona pois tem uma chamada síncrona dentro dela
async function api(){
    // Recupera cep informado pelo usuário
    let cep = Number(document.getElementById("cep").value)

    // Vamos chamar a api usando a função fetch do JS
    // Await é síncrono, pois teremos que aguardar a resposta para continuar
    let resposta = await fetch(`https://viacep.com.br/ws/${cep}/json/`)

    //Os dados chegaram no formato string, vamos converter em JSON
    let dados = await resposta.json()

    // Coloca o logradouro no formulário
    document.getElementById("logradouro").value = dados.logradouro
}