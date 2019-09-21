require 'bcrypt'

class Registration

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	PASSWORD_FORMAT = /^(?=.*\d)(?=.*([a-z]|[A-Z]))([\x20-\x7E]){8,40}$/

	PASSWORD_RULES = "Write password \n Password must contain: \n uppercase letters \n numbers \n at least 8 characters long"
	
	public
	def general_method
		check_email
		check_password
	end


	private
	def check_email
		puts 'Write email'

		email = gets.chomp
		if email.empty? || !(email =~ VALID_EMAIL_REGEX)
			puts "You need to enter this type of mail: example@mail.com"
			check_email
		else
			puts "Your email: #{email}"
		end
	end

	def check_password
		puts PASSWORD_RULES
		password = gets.chomp

		if password.length < 8 || password.empty? || !(PASSWORD_FORMAT.match(password.to_s))
			check_password
		else
			puts "Your password: #{password} "
			encrypt_password(password)
		end	
	end

	def encrypt_password(password)
		encrypt_pass = BCrypt::Password.create(password.to_s)
		puts "Encrypt_password: #{encrypt_pass}"
		check_repeat_password(encrypt_pass)
	end

	def check_repeat_password(encrypt_password)
		puts 'Enter password again:'
		repeat_password = gets.chomp

		if repeat_password == BCrypt::Password.new(encrypt_password.to_s)
			puts 'Good! Password saved.'
		else
			puts "Passwords don't match. Please repeat password."
			check_repeat_password(encrypt_password)
		end
	end

end

my_registration = Registration.new
my_registration.general_method