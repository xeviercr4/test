require 'pg'
class RunSql

  def with_db
    db = PG.connect(
        dbname: 'myapp_development',
        user: 'postgres',
        password: 'password'
    )
    begin
      yield db
    ensure
      db.close
    end
  end

  def execute(sql_file = 'CreateDB.sql')
    sql = File.open(sql_file,  'rb') { |file| file.read }
    with_db do |db|
      begin
        db.exec(sql)
      rescue PG::Error
        #####
      end
    end
  end
end