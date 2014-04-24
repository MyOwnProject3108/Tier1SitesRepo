      def plog(text, color)
	        puts "\033[1;30m#{text}\033[0m" if color=="grey"
	        puts "\033[1;31m#{text}\033[0m" if color=="red"
	        puts "\033[1;32m#{text}\033[0m" if color=="green"
	        puts "\033[1;33m#{text}\033[0m" if color=="yellow"
	        puts "\033[1;35m#{text}\033[0m" if color=="magenta"
	        puts "\033[1;36m#{text}\033[0m" if color=="blue"
      end