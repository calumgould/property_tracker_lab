require("pg")

class PropertyTracker

  attr_accessor :address, :value, :number_of_bedrooms, :year_built

  def initialize(options)
    @id = options["id"].to_i() if options["id"]
    @address = options["address"]
    @value = options["value"].to_i()
    @number_of_bedrooms = options["number_of_bedrooms"].to_i()
    @year_built = options["year_built"].to_i()
  end

  def save()
    db = PG.connect({
      dbname: "property_tracker",
      host: "localhost"
      })
    sql = "INSERT INTO property_tracker
    (address, value, number_of_bedrooms, year_built)
    VALUES
    ($1, $2, $3, $4) RETURNING id"
    values = [@address, @value, @number_of_bedrooms, @year_built]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values).first()["id"].to_i()
    db.close()
  end

  def delete()
    db = PG.connect({
      dbname: "property_tracker",
      host: "localhost"
      })
    sql = "DELETE FROM property_tracker WHERE id = $1"
    values = [@address, @value, @number_of_bedrooms, @year_built]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values).first()["id"].to_i()
    db.close()
  end





end