#SQL 1
SELECT \*, count(id) FROM tasks group by project_id, status;

#SQL 2
SELECT assigned_to, users.name, COUNT(tasks.id) AS open_task_count, MIN(due_date) AS earliest_due_date FROM tasks left join users on users.id=tasks.assigned_to WHERE status != 'done' GROUP BY assigned_to ORDER BY open_task_count DESC, earliest_due_date ASC LIMIT 3;
#SQL 3
SELECT \* FROM `tasks` where status='todo' and due_date='2026-06-24';
this query will slow because there the index is missing the status and due_date field. as well as currently i have created this due date column as date but instead of date if we create this date time and we fetch the data by whereDate() instead of whereBetween('due_date',[date('Y-m-d 00:00:00'),date('Y-m-d 23:59:59')])

tasks_assigned_to_foreign
ALTER TABLE `project_user` ADD INDEX(`user_id`, `project_id`);

API Endpoints

1. api/v1/tasks
2. api/v1/task_update/4
3. api/login
