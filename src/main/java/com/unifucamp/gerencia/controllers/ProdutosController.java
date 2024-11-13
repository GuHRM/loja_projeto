package com.unifucamp.gerencia.controllers;

import com.unifucamp.gerencia.dto.RequisicaoNovoProduto;
import com.unifucamp.gerencia.models.Produto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

import com.unifucamp.gerencia.repositories.ProdutosRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
@Controller
public class ProdutosController {
    @Autowired
    private ProdutosRepository produtosRepository;
    // Endpoint para retornar todos os produtos
    @GetMapping
    public List<Produto> getAllProdutos() {
        return produtosRepository.findAll();
    }
    @GetMapping("/produtos")
    public ModelAndView index() {
        List<Produto> lista_produtos = this.getAllProdutos();
        ModelAndView mv = new ModelAndView("produtos/index");
        mv.addObject("produtos", lista_produtos);
        return mv;
    }
    @GetMapping("/produtos/novo")
    public String prod_new() {
        return "produtos/novo";
    }
    
    @PostMapping("/produtos")
    public String criar(RequisicaoNovoProduto requisicao) {
        Produto produto = requisicao.toProduto();
        this.produtosRepository.save(produto);
        return "redirect:/produtos";
    }
    
    @GetMapping("/produtos/{id}")
    @ResponseBody
    public Produto getProduto(@PathVariable Integer id) {
        return produtosRepository.findById(id).orElse(null);
    }
    /*public ModelAndView ver(@PathVariable Integer id) {
        //classe abstrata que verifica se o resultado é um objeto do tipo passado
        Optional<Produto> opcional = this.produtosRepository.findById(id);
        if(opcional.isPresent()){
            Produto produto = opcional.get();
            ModelAndView mv = new ModelAndView("produtos/ver");
            mv.addObject("produto", produto);
            return mv;
        } else {//nao achou o produto
            return new ModelAndView("redirect:/produtos");
        }
    }*/

    @GetMapping("/produtos/{id}/editar")
    public ModelAndView editar(@PathVariable Integer id) {
        Optional<Produto> optional = this.produtosRepository.findById(id);
        if (optional.isPresent()) {
            Produto produto = optional.get();
            ModelAndView mv = new ModelAndView("produtos/editar");
            mv.addObject("produto", produto);
            return mv;
        } else {
            return new ModelAndView("redirect:/produtos");
        }
    }

    // Atualizar um produto
    @PostMapping("/produtos/{id}/atualizar")
    public String atualizar(@PathVariable Integer id, RequisicaoNovoProduto requisicao) {
        Optional<Produto> optional = this.produtosRepository.findById(id);
        if (optional.isPresent()) {
            Produto produto = optional.get();
            produto.setDescricao(requisicao.getDescricao());
            produto.setValor(requisicao.getValor());
            produto.setEstoque(requisicao.getEstoque());
            // Atualize os campos necessários com os valores da requisição
            this.produtosRepository.save(produto);
        }
        return "redirect:/produtos";
    }

    // Deletar um produto
    @PostMapping("/produtos/{id}/deletar")
    public String deletar(@PathVariable Integer id) {
        Optional<Produto> optional = this.produtosRepository.findById(id);
        if (optional.isPresent()) {
            this.produtosRepository.deleteById(id);
        }
        return "redirect:/produtos";
    }



}
