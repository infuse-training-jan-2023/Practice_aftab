import re
def validate_password(data):
   password = data['password']
   pattern = "[^@]+@[^@]+\.[^@]+"
   if re.match(pattern,password):
      return "valid"
   return "invalid"


