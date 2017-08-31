require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/groups.db")}
DB[:conn].execute("DROP TABLE IF EXISTS groups")
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS groups (
  id INTEGER PRIMARY KEY,
  name TEXT,
  subs TEXT
  )
SQL

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
