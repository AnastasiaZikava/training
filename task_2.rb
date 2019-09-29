require 'digest'

module ConstantList
  PASSWORD_RULES = "Write password \n Password must contain: \n uppercase letters \n numbers \n at least 8 characters long"
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  PASSWORD_FORMAT = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,40}$/
end

module BCrypt
  def encrypt(pass)
    @encrypt_password = Digest::SHA2.hexdigest pass.to_s
    puts "Encrypt password: #{@encrypt_password}"
  end

  def check_password(pass)
   Digest::SHA2.hexdigest(pass) == @encrypt_password.to_s ? true : false
  end
end


class Registration
  include ConstantList
  include BCrypt

  attr_accessor :email, :password
  
  public
  def general_method
    get_email
    get_password
    password_replay
    show_registration_info
  end


  private
  def get_email
    puts 'Write email'

    @email = gets.chomp.strip
    if @email.empty? || !(@email =~ VALID_EMAIL_REGEX)
      puts "You need to enter this type of mail: example@mail.com"
      get_email
    else
      puts "Your email: #{@email}"
    end
  end

  def get_password
    puts PASSWORD_RULES
    @password = gets.chomp.strip

    if @password.length < 8 || @password.empty? || !(PASSWORD_FORMAT.match(@password.to_s))
      get_password
    else
      puts "Your password: #{@password} "
      encrypt(@password)
    end 
  end

  def password_replay
    puts 'Repeat password'
    repeat_password = gets.chomp.strip
    if check_password(repeat_password)
      puts 'Good! Registration completed successfully'
    else
      password_replay
    end
  end

  def show_registration_info
    puts "Your email: #{@email}\nYour password: #{@password} \n Thank you!"
  end
end

my_registration = Registration.new
my_registration.general_method



