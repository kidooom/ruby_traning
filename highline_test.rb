require 'highline/import'

username = ask("Enter user: ") { |q| q.echo = true }
password = ask("Enter password: ") { |q| q.echo = false }

ask("retry number?: ", Integer) { |q| q.in = 0..10 }

interests = ask("Interests?  (comma sep list)  ", lambda { |str| str.split(/,\s*/) })
p interests

say("This should be <%= color('bold', BOLD) %>!")

choose do |menu|
  menu.prompt = "Please choose your favorite programming language?  "

  menu.choice(:ruby) { say("Good choice!") }
  menu.choices(:python, :perl) { say("Not from around here, are you?") }
end