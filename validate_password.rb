class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    if @password.length >= 6 && @password.length <= 24 && @password.match(/[A-Z]/) && @password.match(/[a-z]/) && @password.match(/[0-9]/) &&  @password.match(/[!@#$%&*+=:;?<>]/) && @password.scan(/(.)\1{2,}/).length == 0
      result = true
    else
      result = false
    end
    puts result
  end
end

ValidatePassword.new("Password1!").perform

ValidatePassword.new("password1!").perform
ValidatePassword.new("Passsword1!").perform
ValidatePassword.new("Password1").perform
ValidatePassword.new("Pas1!").perform
