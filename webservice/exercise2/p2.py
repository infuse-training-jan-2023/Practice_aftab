import re
def validate_password(data):
   password = data['password']
   pattern = "^(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#\$%\^&\*])(?=.{8,})"
   if re.match(pattern,password):
      return "valid"
   return "invalid"


