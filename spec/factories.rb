# Will automatically insert the user with these attributes ito the DB when the 
#test runs

Factory.define :user do |user|
  
  
  user.name "User"
  user.email "user@example.com"
  user.password "foobar"
  user.password_confirmation "foobar"
end
