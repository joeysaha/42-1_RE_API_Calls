require 'httparty'

def password_pull()
  password = HTTParty.get('https://makemeapassword.ligos.net/api/v1/passphrase/json?p=x&c=1')
  # puts password
  password_json = JSON.parse(password.body)
  # puts password_json
  password_obj = password_json["pws"]
  # puts password_obj
end

passwords = []
10.times {
  passwords.push(password_pull)
}

puts passwords
