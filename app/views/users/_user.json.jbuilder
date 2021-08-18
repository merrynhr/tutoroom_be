json.(user, :id, :email, :fullname, :subject, :teacher)
json.token user.generate_jwt