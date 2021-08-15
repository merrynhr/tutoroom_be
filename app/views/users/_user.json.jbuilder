json.call(user, :id, :email, :username, :subject, :teacher)
json.token user.generate_jwt
