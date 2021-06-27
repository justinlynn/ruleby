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

module MissManners
  class MannersData    
    def initialize
      @guests16 = [
        Guest.new(:n1, :f, :h3),
        Guest.new(:n1, :f, :h1),
        Guest.new(:n1, :f, :h2),
        Guest.new(:n2, :f, :h3),
        Guest.new(:n2, :f, :h2),
        Guest.new(:n3, :m, :h1),
        Guest.new(:n3, :m, :h3),
        Guest.new(:n4, :m, :h2),
        Guest.new(:n4, :m, :h1),
        Guest.new(:n5, :m, :h2),
        Guest.new(:n5, :m, :h3),
        Guest.new(:n6, :m, :h2),
        Guest.new(:n6, :m, :h1),
        Guest.new(:n7, :f, :h2),
        Guest.new(:n7, :f, :h1),
        Guest.new(:n7, :f, :h3),
        Guest.new(:n8, :f, :h3),
        Guest.new(:n8, :f, :h2),
        Guest.new(:n9, :f, :h1),
        Guest.new(:n9, :f, :h3),
        Guest.new(:n9, :f, :h2),
        Guest.new(:n10, :m, :h2),
        Guest.new(:n10, :m, :h3),
        Guest.new(:n11, :m, :h3),
        Guest.new(:n11, :m, :h2),
        Guest.new(:n11, :m, :h1),
        Guest.new(:n12, :m, :h3),
        Guest.new(:n12, :m, :h1),
        Guest.new(:n13, :m, :h2),
        Guest.new(:n13, :m, :h3),
        Guest.new(:n13, :m, :h1),
        Guest.new(:n14, :f, :h3),
        Guest.new(:n14, :f, :h1),
        Guest.new(:n15, :f, :h3),
        Guest.new(:n15, :f, :h2),
        Guest.new(:n15, :f, :h1),
        Guest.new(:n16, :f, :h3),
        Guest.new(:n16, :f, :h2),
        Guest.new(:n16, :f, :h1),
        LastSeat.new(16)]
        
      @guests32 = [
        Guest.new(:n1, :m, :h1),
        Guest.new(:n1, :m, :h3),
        Guest.new(:n2, :f, :h3),
        Guest.new(:n2, :f, :h2),
        Guest.new(:n2, :f, :h1),
        Guest.new(:n3, :f, :h1),
        Guest.new(:n3, :f, :h2),
        Guest.new(:n4, :f, :h3),
        Guest.new(:n4, :f, :h1),
        Guest.new(:n5, :f, :h1),
        Guest.new(:n5, :f, :h2),
        Guest.new(:n6, :m, :h1),
        Guest.new(:n6, :m, :h2),
        Guest.new(:n6, :m, :h3),
        Guest.new(:n7, :f, :h2),
        Guest.new(:n7, :f, :h1),
        Guest.new(:n7, :f, :h3),
        Guest.new(:n8, :f, :h1),
        Guest.new(:n8, :f, :h3),
        Guest.new(:n8, :f, :h2),
        Guest.new(:n9, :f, :h1),
        Guest.new(:n9, :f, :h3),
        Guest.new(:n9, :f, :h2),
        Guest.new(:n10, :m, :h2),
        Guest.new(:n10, :m, :h1),
        Guest.new(:n11, :m, :h2),
        Guest.new(:n11, :m, :h1),
        Guest.new(:n12, :m, :h3),
        Guest.new(:n12, :m, :h2),
        Guest.new(:n13, :m, :h1),
        Guest.new(:n13, :m, :h3),
        Guest.new(:n14, :m, :h3),
        Guest.new(:n14, :m, :h2),
        Guest.new(:n15, :f, :h2),
        Guest.new(:n15, :f, :h1),
        Guest.new(:n15, :f, :h3),
        Guest.new(:n16, :f, :h3),
        Guest.new(:n16, :f, :h2),
        Guest.new(:n16, :f, :h1),
        Guest.new(:n17, :m, :h3),
        Guest.new(:n17, :m, :h2),
        Guest.new(:n18, :f, :h2),
        Guest.new(:n18, :f, :h1),
        Guest.new(:n19, :f, :h1),
        Guest.new(:n19, :f, :h2),
        Guest.new(:n19, :f, :h3),
        Guest.new(:n20, :f, :h1),
        Guest.new(:n20, :f, :h2),
        Guest.new(:n20, :f, :h3),
        Guest.new(:n21, :m, :h2),
        Guest.new(:n21, :m, :h3),
        Guest.new(:n21, :m, :h1),
        Guest.new(:n22, :f, :h1),
        Guest.new(:n22, :f, :h2),
        Guest.new(:n22, :f, :h3),
        Guest.new(:n23, :f, :h3),
        Guest.new(:n23, :f, :h1),
        Guest.new(:n23, :f, :h2),
        Guest.new(:n24, :m, :h1),
        Guest.new(:n24, :m, :h3),
        Guest.new(:n25, :f, :h3),
        Guest.new(:n25, :f, :h2),
        Guest.new(:n25, :f, :h1),
        Guest.new(:n26, :f, :h3),
        Guest.new(:n26, :f, :h2),
        Guest.new(:n26, :f, :h1),
        Guest.new(:n27, :m, :h3),
        Guest.new(:n27, :m, :h1),
        Guest.new(:n27, :m, :h2),
        Guest.new(:n28, :m, :h3),
        Guest.new(:n28, :m, :h1),
        Guest.new(:n29, :m, :h3),
        Guest.new(:n29, :m, :h2),
        Guest.new(:n29, :m, :h1),
        Guest.new(:n30, :m, :h2),
        Guest.new(:n30, :m, :h1),
        Guest.new(:n30, :m, :h3),
        Guest.new(:n31, :m, :h2),
        Guest.new(:n31, :m, :h1),
        Guest.new(:n32, :m, :h1),
        Guest.new(:n32, :m, :h3),
        Guest.new(:n32, :m, :h2),
        LastSeat.new(32)]
    end
    
    attr_reader :guests16
    attr_reader :guests32
  end
end