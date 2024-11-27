Файл со скриптом backup_postgresql.sh ежедневно в 5 утра
создает резервную копию базы данных 'devops'.

Файл backup-database.service отвечает за запуск bash скрипта

Файл backup-database.timer запускает сервис каждый день в 5:00.