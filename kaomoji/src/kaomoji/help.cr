require "option_parser"
require "colorize"

module Kaomoji
  Version = {{"0.1.0"}}.colorize.italic

  OptionParser.parse do |parser|
    parser.banner = <<-HELP
    #{"kaomoji-cli".colorize(Colorize::Color256.new(212)).bold} v#{Version}

    #{"Usage:".colorize(Colorize::Color256.new(99)).bold}
        kaomoji [args]

    #{"Example:".colorize(Colorize::Color256.new(99)).bold}
        kaomoji -p
        kaomoji -c

    #{"Arguments:".colorize(Colorize::Color256.new(99)).bold}
    HELP

    parser.on("-v", "--version", "Print version and exit") do
      puts "kaomoji version: #{Version}"
      exit
    end

    parser.on("-h", "--help", "Show this help") do
      puts parser
      exit
    end

    parser.invalid_option do |flag|
      STDERR.puts "ERROR: #{flag} is not a valid argument".colorize(:red).bold
      STDERR.puts ""
      STDERR.puts parser
      exit(1)
    end
  end
end
