json.result do
	  json.messages "ok"
	  json.rstatus  "1"
	  json.errorcode ""
end
json.data do
		json.next_task    @next_task
		json.total_task 	@total_task
		json.tasks do
			json.array! @tasks.each do |task| 
	   		json.task_id          task.id
				json.title						task.title
				json.ans_1 						task.ans_1
				json.ans_2 						task.ans_2
				json.ans_3						task.ans_3
				json.ans_4						task.ans_4
				json.ans_5						task.ans_5
			end
		end 
end 
	