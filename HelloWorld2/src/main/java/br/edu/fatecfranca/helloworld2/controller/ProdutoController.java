package br.edu.fatecfranca.helloworld2.controller;

import br.edu.fatecfranca.helloworld2.model.Produto;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
public class ProdutoController {

    // Simular um banco de dados contendo os produtos
    private static final Map<Long, Produto> produtos = new HashMap<>();

    static {
        produtos.put(1L, new Produto(1L, "Notebook", 3500));
        produtos.put(2L, new Produto(2L, "Celular", 2000));
        produtos.put(3L, new Produto(3L, "Tablet", 2000));
    }

    @GetMapping("/produtos/{id}")
    public Produto findById(@PathVariable Long id) {
        Produto produto = produtos.get(id);
        if (produto != null) {
            return produto;
        }
        else {
            return new Produto(0L, "Produto não encontrado", 0);
        }
    }

    @PostMapping("/produtos")
    public Produto add(@RequestBody Produto produto) {
        produtos.put(produto.getId(), produto);
        return produto;
    }
}