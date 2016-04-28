print "Seed standard categories..."

Category.create ([
  {name: "PC Games"},
  {name: "XBox Games"},
  {name: "Board Games"}
  ])


puts "seeds #{Category.count} categories!"
