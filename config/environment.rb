require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/students.db")}
DB[:conn].execute("DROP TABLE IF EXISTS songs")
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS songs (
  id INTEGER PRIMARY KEY, 
  name TEXT, 
  album TEXT
  )
SQL

sql2 = <<-SQL
  CREATE TABLE IF NOT EXISTS dogs (
  id INTEGER PRIMARY KEY, 
  name TEXT, 
  breed TEXT
  )
SQL

DB[:conn].execute(sql)
DB[:conn].execute(sql2)
DB[:conn].results_as_hash = true