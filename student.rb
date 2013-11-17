class Student

	attr_reader :first_name, :last_name, :grade
	def initialize(first_name, last_name, grade)
		@first_name = first_name
		@last_name = last_name
		@grade = grade
	end

	def senior?
		grade == 12
	end

	def junior?
		grade == 11
	end

	def sophomore?
		grade == 10
	end

	def freshman?
		grade == 9
	end

	def to_s
		"#{last_name}, #{first_name}"
	end
end

def seniors(students)
	students.select { |student| student.senior? }
end

def juniors(students)
	students.select { |student| student.junior? }
end

def sophomores(students)
	students.select { |student| student.sophomore? }
end

def freshmen(students)
	students.select { |student| student.freshman? }
end

fred = Student.new("Fred", "James", 12)
sarah = Student.new("Sarah", "Smith", 12)
jack = Student.new("Jack", "Gong", 11)
mike = Student.new("Mike", "Johnson", 9)
allison = Student.new("Allison", "Greenly", 10)
portia = Student.new("Portia", "McNeary", 9)
allen = Student.new("Allen", "Davidson", 12)
all_students = [fred, sarah, jack, mike, allison, portia, allen]

puts "Seniors:"

seniors(all_students).each do |student|
	puts "* #{student}"
end

puts "Juniors:"

juniors(all_students).each do |student|
	puts "* #{student}"
end

puts "Sophomores:"

sophomores(all_students).each do |student|
	puts "* #{student}"
end

puts "Freshmen:"

freshmen(all_students).each do |student|
	puts "* #{student}"
end