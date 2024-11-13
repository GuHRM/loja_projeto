package com.unifucamp.gerencia.repositories;

import com.unifucamp.gerencia.models.Produto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProdutosRepository extends JpaRepository<Produto, Integer> {
    
}
