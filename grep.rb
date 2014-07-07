def my_grep(file_name, grep_str)
    File.open(file_name, 'r') do |x|
        x.each_line { |y| puts y if y =~ %r(#{grep_str})}
    end
end

if ARGV.size != 2
    puts "wrong params"
    exit(-1)
elsif
    my_grep(ARGV[0], ARGV[1])
end
