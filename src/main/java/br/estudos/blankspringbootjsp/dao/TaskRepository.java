package br.estudos.blankspringbootjsp.dao;

import br.estudos.blankspringbootjsp.model.Task;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TaskRepository extends CrudRepository<Task, Integer> {
    @Query(value = "SELECT MAX(NUMORCAMENTO)  " +
            " FROM T_TASKS ", nativeQuery = true)
    Integer proximoNumeroOrcamento();

}
