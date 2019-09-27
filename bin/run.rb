require_relative 'environment'

db = SQLite3::Database.new(':memory:')
# db = SQLite3::Database.new('../db/lab_database.db')
sql_runner = SQLRunner.new(db)

sql_runner.execute_create_file
sql_runner.execute_insert_file

all_bears = db.execute('SELECT * FROM bears')

binding.pry
