class Tps < ActiveRecord::Base
  # change to the new table
  self.table_name = "tps_barus"
  def c1_url
    return "http://scanc1.kpu.go.id/viewp.php?f=#{self.kelurahan_id}#{self.tps_id.rjust(3, '0')}04.jpg"
  end

  def self.random_id
    return self.offset(rand(self.count)).first.id
  end
end
