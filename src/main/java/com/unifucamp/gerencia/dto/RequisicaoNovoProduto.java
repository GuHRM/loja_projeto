package com.unifucamp.gerencia.dto;
import com.unifucamp.gerencia.models.Produto;


import java.math.BigDecimal;
/*DTO = DATA TRANSFER OBJECT*/
public class RequisicaoNovoProduto {
    private String descricao;
    private BigDecimal valor;
    private int estoque;
    public String getDescricao() {
        return descricao;
    }
    public Produto toProduto(){
        Produto produto = new Produto();
        produto.setDescricao(this.descricao);
        produto.setEstoque(this.estoque);
        produto.setValor(this.valor);
        return produto;
    }
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public BigDecimal getValor() {
        return valor;
    }

    public void setValor(BigDecimal valor) {
        this.valor = valor;
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }
}
