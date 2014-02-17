#!/usr/bin/env ruby 

ARGF.each do |pass|

    pass.chomp!
	len       = pass.size 
	is_letter = pass.scan(/[A-Z]{1}/).size
	is_digits = pass.scan(/\d/).size
	is_spec   = pass.scan(/[@#*=]{1}/).size
	is_space  = pass.scan(/[ ]{1}/).size

	puts is_letter > 0 && is_digits > 0 && is_spec > 0 && is_space == 0 && len.between?(5,10) ? 'PASS' : 'FAIL'
end
