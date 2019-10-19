class Supermarket < ApplicationRecord
  self.table_name = 'planet_osm_point'

  def self.geodata
    select('name, st_asgeojson(st_transform(way, 4326)) geo')
      .where(shop: 'supermarket')
  end
end
