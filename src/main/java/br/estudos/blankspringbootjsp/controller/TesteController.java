package br.estudos.blankspringbootjsp.controller;

import br.estudos.blankspringbootjsp.service.ClienteService;
import br.estudos.blankspringbootjsp.service.TaskService;
import br.estudos.blankspringbootjsp.model.Task;
import br.estudos.blankspringbootjsp.dao.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;

@Controller
public class TesteController {
	@Autowired
	private TaskService taskService;
	private TaskRepository taskRepository;

	@Autowired
	private ClienteService clienteService ;

	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	@GetMapping("/")
	public String teste() {
		return "teste";
	}

	@GetMapping("/home")
	public String home(HttpServletRequest request){
		//request.setAttribute("mode", "MODE_HOME");
		return "index";
	}
	@GetMapping("/welcome")
	public String welcome(Map<String, Object> model){
		model.put("message", this.message);
		//request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}
	@GetMapping("/all-tasks")
	public String allTasks(HttpServletRequest request){
//		List<Task> tasks = taskService.findAll();
//
//		request.setAttribute("tasks", tasks);
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");

		return "alltasks";
	}
	@GetMapping("/update-task")
	public String updateTask(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("task", taskService.findTask(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "index";
	}

	@GetMapping("/orcamento")
	public String orcamento(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("task", taskService.findTask(id));
		request.setAttribute("itensorcamentos", taskService.findAll());
		request.setAttribute("clientes", clienteService.findAll());
		request.setAttribute("mode", "MODE_UPDATE");
		return "orcamento";
	}

	@PostMapping("/save-task")
	public String saveTask(@ModelAttribute Task task, BindingResult bindingResult, HttpServletRequest request){
		task.setDate_created(LocalDate.now());
//		task.setNumorcamento( taskRepository.proximoNumeroOrcamento()+1  );
		taskService.save(task);
		request.setAttribute("tasks", taskService.findAll());
		request.setAttribute("mode", "MODE_TASKS");
		return "index";
	}


	// Falta Implementar a classe de controle de LOGIN, criar tabela , login, CRUD
	@GetMapping("/Login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_USUARIO");
		return "index";
	}
	// Falta Implementar a classe de controle de LOGIN, criar tabela , login, CRUD
	@GetMapping("/Financa")
	public String financa(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "index";
	}



}
