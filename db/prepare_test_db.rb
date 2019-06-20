require 'pg'

def prepare_test_db
  p "Setting up test database..."  
    
  connection = PG.connect(dbname: 'daily_diary_test')  
    
  # Clear the bookmarks table
  connection.exec("TRUNCATE posts;")

end