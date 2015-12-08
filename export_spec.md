all facilities and its users (ok)

all products and which program it belongs to (ok)

latest stock on hands of each drug of facilities (take from stock_cards, need expire date, only need latest quantity)

all movements histories (signature)

all VIA requisition histories (theory soh is missing now)

all MMIA requisition histories (theory soh is missing now)

6 csv files in a zip file

facilities csv: [http://localhost:5555/cube/facilities/facts?format=csv](http://localhost:5555/cube/facilities/facts?format=csv)

products csv: [[http://localhost:5555/cube/requisition_line_items/members/products?format=csv](http://localhost:5555/cube/requisition_line_items/members/products?format=csv))

latest stock at different facilities: [http://localhost:5555/cube/stock_cards/members/stock?cut=stock:expirationdates&format=csv](http://localhost:5555/cube/stock_cards/members/stock?cut=stock:expirationdates&format=csv)

movement history:  [http://localhost:5555/cube/stock_cards/members/movement?cut=movement:signature&format=csv](http://localhost:5555/cube/stock_cards/members/movement?cut=movement:signature&format=csv)

requisition mmia: [http://localhost:5555/cube/requisition_line_items/facts?cut=products:ESS_MEDS](http://localhost:5555/cube/requisition_line_items/facts?cut=products:ESS_MEDS)

requisition via: [http://localhost:5555/cube/requisition_line_items/facts?cut=products:ESS_MEDS](http://localhost:5555/cube/requisition_line_items/facts?cut=products:ESS_MEDS)
