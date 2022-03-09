import os

ip = input("Give me the domain: ")

print("Ok!")

os.system("echo 'use auxiliary/gather/search_email_collector' >> gmails.rb")
os.system("echo 'set DOMAIN "+ip+"' >> gmails.rb")
os.system("echo 'exploit' >> gmails.rb")
os.system("gnome-terminal -- msfconsole -r gmails.rb")

print("Done")

os.system("echo 'use auxiliary/gather/searchengine_subdomains_collector' >> domains.rb")
os.system("echo 'set TARGET "+ip+"' >> domains.rb")
os.system("echo 'exploit' >> domains.rb")
os.system("gnome-terminal -- msfconsole -r domains.rb")

print("Done")

input("Press enter to exit")
exit()
