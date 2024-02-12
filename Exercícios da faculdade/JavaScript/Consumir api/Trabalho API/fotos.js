async function api(){
    let numeroFoto = document.getElementById("numeroFoto").value

    let resposta = await fetch(`https://jsonplaceholder.typicode.com/photos/${numeroFoto}`).then(response => {return response.json()})

    document.getElementById("albumId").value = resposta.albumId
    document.getElementById("title").value = resposta.title
    document.getElementById("foto").src = resposta.url
}