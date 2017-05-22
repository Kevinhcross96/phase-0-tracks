require 'sqlite3'

db = SQLite3::Database.new("patients.db")
db.results_as_hash = true

mktable = <<-SQL
	CREATE TABLE IF NOT EXISTS patients(
		name VARCHAR(255),
		age INT,
		condition VARCHAR(255),
		insured BOOLEAN
	)
SQL

db.execute(mktable)

def add_patient(db, name, age, condition, insured)
	db.execute("INSERT INTO patients (name, age, condition, insured) VALUES (?, ?, ?, ?)", [name, age, condition, insured])
end

def patientinfo(db, name)
	puts db.execute("SELECT * FROM patients WHERE ? = patients.name", [name])
end

def newpatient
	puts "Please enter the name of the patient."
	patientname = gets.chomp
	puts "Please enter the age of the patient."
	patientage = gets.chomp
	puts "Please state the patient's condition."
	patientcondition = gets.chomp
	puts "Is the patient insured? Please answer 'Yes' or 'No'."
	patientinsured = gets.chomp
	
	add_patient(db, patientname, patientage, patientcondition, patientinsured)
end

def patientcheckout(db, name)
	db.execute("DELETE FROM patients WHERE ? = patients.name", [name])
end

def lobby
	counter = 0
	db = SQLite3::Database.new("patients.db")
	puts "Hello. What would you like to do? You can either answer 'New Patient' to register a new patient or 'Patient Info' to get information on an already existing patient."
	puts "If you would like to remove a patient, please type 'Remove Patient'."
	puts "You may also type 'Quit' to exit the program."
	answer = gets.chomp
	until counter == 1
		if answer == "New Patient"
			newpatient
			counter = 1
		elsif answer == "Patient Info"
			puts "Please enter the name of the patient you are looking for."
			patientname = gets.chomp
			puts "The information is as follows top to bottom: name, age, condition, and whether or not they are insured."
			patientinfo(db, patientname)
			counter = 1
		elsif answer == "Remove Patient"
			puts "Please enter the name of the patient you want to remove."
			patientname = gets.chomp
			patientcheckout(db, patientname)
			puts "#{patientname} has been removed."
			counter = 1
		elsif answer == "Quit"
			counter = 1
		else puts "ERROR. Please type either 'New Patient', 'Patient Info', 'Remove Patient', or 'Quit'."
			answer = gets.chomp
		end
	end
end

def newpatient
	db = SQLite3::Database.new("patients.db")
	puts "Please enter the name of the patient."
		patientname = gets.chomp
		puts "Please enter the age of the patient."
		patientage = gets.chomp
		puts "Please state the patient's condition."
		patientcondition = gets.chomp
		puts "Is the patient insured? Please answer 'Yes' or 'No'."
		patientinsured = gets.chomp
	add_patient(db, patientname, patientage, patientcondition, patientinsured)
end

lobby