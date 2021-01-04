package br.estudos.blankspringbootjsp.service;


import br.estudos.blankspringbootjsp.dao.TaskRepository;

import br.estudos.blankspringbootjsp.model.Task;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
@AllArgsConstructor
public class TaskService {

	private final TaskRepository taskRepository;


//	public TaskService(TaskRepository taskRepository) {
//		this.taskRepository = taskRepository;
//	}
	
	public List<Task> findAll(){
		List<Task> tasks = new ArrayList<>();
		for(Task task : taskRepository.findAll()){
			tasks.add(task);
		}
		return tasks;
	}
	
	public Task findTask(int id){
		return taskRepository.findById(id).orElse(null);
	}
	
	public void save(Task task){
		taskRepository.save(task);
	}
	
	public void delete(int id){
		taskRepository.deleteById(id);
	}
}
