import re
def validate_email(data):
   email = data['email']
   pattern = "^[a-zA-Z0-9-._]+@[a-zA-Z0-9]+\.[a-z]{1,3}$"
   if re.match(pattern,email):
      return "valid"
   return "invalid"


