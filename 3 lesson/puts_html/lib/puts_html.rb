require "puts_html/version"

module PutsHtml
  class Error < StandardError; end
  class PutsFile
	  def initialize
	    $string
	  end
	  def p_file
	  if $string.include?("<") or $string.include?(">")
       $string.gsub!(/[<>]/,"")
    end
	    File.open('text.html', 'w'){ |f| f.write $string }
	  end
	end
end
