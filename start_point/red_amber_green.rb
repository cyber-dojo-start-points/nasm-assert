
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red   if /(.*)Assertion(.*)failed./.match(output)
  # The test file prints this line once every assertion has held. Naming the
  # count rather than allowing any digits is what keeps a kata that ran no
  # test, and said so with a zero, from reading as a pass.
  return :green if /(All|[1-9]\d*) tests passed/.match(output)
  return :amber
}
