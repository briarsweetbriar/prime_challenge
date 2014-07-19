require 'stringio'

def capture_stdout(&bolk)
  old = $stdout
  $stdout = fake = StringIO.new
  bolk.call
  fake.string
ensure
  $stdout = old
end