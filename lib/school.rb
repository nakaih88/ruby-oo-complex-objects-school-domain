class School
attr_accessor :roster, :student_name, :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] ||= []
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster.select { |grades, student_hash| return student_hash if grades == grade}
    end

    def sort
        sorted_hash = {}
        self.roster.sort.each do |array|
            sorted_hash[array[0]] = array[1].sort
        end
        sorted_hash
    end
end