let vet = [25, 57, 48, 37, 12, 92, 86, 33]

function bubbleSort(vet){

    for(let i = 0; i < vet.length-1; i++){
        var aux = 0

        for(let j = 0; j < vet.length-i-1; j++){
            
            if( vet[j] > vet[j+1]){
                aux = vet[j]
                vet[j] = vet[j+1]
                vet[j+1] = aux
            }
        
        }
    }
}

function insercaodireta(vet) {
    
    for (let i = 1; i < vet.length; i++) {
        let aux = vet[i];
        let j = i - 1;
        
        while (j >= 0 && vet[j] > aux) {
            vet[j + 1] = vet[j];
            j = j - 1;
        }
        vet[j + 1] = aux;
    }
}

function selecaoDireta(vet) {
    
    for (let i = 0; i < vet.length - 1; i++) {
        let menor = i;
        
        for (let j = i + 1; j < vet.length; j++) {
            
            if (vet[j] < vet[menor]) {
                menor = j;
            }
        }
        
            if (menor !== i) {
                let aux = vet[i];
                vet[i] = vet[menor];
                vet[menor] = aux;
            }
    }
}