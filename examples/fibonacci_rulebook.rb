# This file is part of the Ruleby project (http://ruleby.org)
#
# This application is free software; you can redistribute it and/or
# modify it under the terms of the Ruby license defined in the
# LICENSE.txt file.
# 
# Copyright (c) 2007 Joe Kutner and Matt Smith. All rights reserved.
#
# * Authors: Joe Kutner, Matt Smith
#

require 'ruleby'

include Ruleby

# NOTE
# In this class we demonstrate the Ferrari DSL syntax.  
class FibonacciRulebookFerrari < Rulebook
  def rules
   # Bootstrap1
    rule  :Bootstrap1,  {:priority => 4},
      [Fibonacci, :f, m.value == -1, m.sequence == 1 ] do |vars|  
        vars[:f].value = 1
        modify vars[:f]
        puts vars[:f].sequence.to_s + ' == ' + vars[:f].value.to_s      
    end  
 
    # Recurse
    rule :Recurse, {:priority => 3},
      [Fibonacci, :f, m.value == -1] do |vars|   
        f2 = Fibonacci.new(vars[:f].sequence - 1)
        assert f2
        puts 'recurse for ' + f2.sequence.to_s
    end  
  
    # Bootstrap2
    rule :Bootstrap2, 
      [Fibonacci, :f, m.value == -1 , m.sequence == 2] do |vars|    
        vars[:f].value = 1       
        modify vars[:f]
        puts vars[:f].sequence.to_s + ' == ' + vars[:f].value.to_s
    end
  
    # Calculate
    rule :Calculate,
      [Fibonacci,:f1, m.value.not== -1, {m.sequence => :s1}],
      [Fibonacci,:f2, m.value.not== -1, {m.sequence( :s1, &c{ |s2,s1| s2 == s1 + 1 } ) => :s2}],
      [Fibonacci,:f3, m.value == -1, m.sequence(:s2, &c{ |s3,s2| s3 == s2 + 1 }) ] do |vars|
        vars[:f3].value = vars[:f1].value + vars[:f2].value
        modify vars[:f3]
        retract vars[:f1]
        puts vars[:f3].sequence.to_s + ' == ' + vars[:f3].value.to_s
    end
  end
end
