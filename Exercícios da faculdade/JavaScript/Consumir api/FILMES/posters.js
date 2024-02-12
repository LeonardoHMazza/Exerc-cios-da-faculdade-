async function api(){
    let titulo = document.getElementById("titulo").value

    let resposta = await fetch(`http://www.omdbapi.com/?t=${titulo}&apikey=a798f844`)
        .then(response => { //garante que somente vai retornar o resultado se tiver
            return response.json()
        })

    document.getElementById("diretor").value = resposta.Director
    document.getElementById("poster").src = resposta.Poster
}