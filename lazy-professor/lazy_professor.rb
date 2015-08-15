
file_path = ARGV[0] || "./test.txt"
answers = []
File.open(file_path) {|file|
    file.each {|line|
        student_answers = line.chomp.chars
        student_answers.each_index {|i|
            answers[i] ||= Hash.new{|h,k| h[k] = 0}
            answers[i][student_answers[i]] += 1
        }
    }

}
answers.each {|q|
    print q.key(q.values.sort.last)
}
puts
