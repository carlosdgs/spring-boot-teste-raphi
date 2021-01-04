package br.estudos.blankspringbootjsp.model;

import lombok.Data;
import java.io.Serializable;
import java.time.LocalDate;
import javax.persistence.*;

@Data
@Entity(name = "t_tasks")
public class Task implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	protected int id ;
	protected int numorcamento ;
	protected int codcliente;
	protected String nomecliente;
	protected String description;
	protected LocalDate date_created;
	protected boolean finished;
	protected double valororcamento;

    //private EntityManager entityManager;
	
	
//	public Task(){}
//
//	public Task(String nomeCliente, double valorOrcamento, String description, Date dateCreated, boolean finished, int codCliente) {
//		super();
//		this.  setNomecliente(nomeCliente);
//		this.setValororcamento(valorOrcamento);
//		this.setDescription(description);
//		this.setDate_created(dateCreated);
//		this.setFinished(finished);
//		//this.setNumorcamento(numOrcamento);
//		this.setCodcliente(codCliente) ;
//	}


//	@Override
//	public String toString() {
//		return "Task [id=" + getId() + ", name=" + getNomecliente() + ", description=" + getDescription() + ", dateCreated=" + getDate_created()
//				+ ", finished=" + isFinished() + "]";
//	}
//
//
//	public int getNumorcamento() {
//		return numorcamento;
//	}
//
//	public void setNumorcamento(int numorcamento) {
//		this.numorcamento = numorcamento;
//	}
//
//	public int getCodcliente() {
//		return codcliente;
//	}
//
//	public void setCodcliente(int codcliente) {
//		this.codcliente = codcliente;
//	}
//
//	public String getNomecliente() {
//		return nomecliente;
//	}
//
//	public void setNomecliente(String nomecliente) {
//		this.nomecliente = nomecliente;
//	}
//
//	public String getDescription() {
//		return description;
//	}
//
//	public void setDescription(String description) {
//		this.description = description;
//	}
//
//	public Date getDate_created() {
//		return date_created;
//	}
//
//	public void setDate_created(Date date_created) {
//		this.date_created = date_created;
//	}
//
//	public boolean isFinished() {
//		return finished;
//	}
//
//	public void setFinished(boolean finished) {
//		this.finished = finished;
//	}
//
//	public double getValororcamento() {
//		return valororcamento;
//	}
//
//	public void setValororcamento(double valororcamento) {
//		this.valororcamento = valororcamento;
//	}
//
//	public int getId() {
//		return id;
//	}
//
//	public void setId(int id) {
//		this.id = id;
//	}

//    public int buscarSequenceOrcamento() {
//    	Query query = entityManager.createNativeQuery("select max(numorcamento)+1 from t_tasks");
//    	return (int) query.getSingleResult();
//    }
	
	
}
