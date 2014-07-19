Dir[File.join(File.dirname(__FILE__), "lib" , "**.rb")].each{ |f| require f }

primes = PrimeHarvester.new(10).gather
table = TableMaker.new(primes).create_table
TablePrinter.new(table).print