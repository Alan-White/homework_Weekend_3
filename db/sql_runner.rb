require('pg')

class SqlRunner

  def self.run( sql )
    begin
      db = PG.connect({ dbname: 'C_C_Cinema', host: 'localhost' })
      result = db.exec( sql )
    ensure
      db.close
    end
    return result
  end

end