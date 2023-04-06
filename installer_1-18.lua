-- | Turtly Farmer |
-- A ComputerCraft program for turtles to automatically farm wheat
-- Version: 0.1.0
-- Github repo: https://github.com/HeshamSHY/Turtly-Farmer

--Turtly Farmer's installer; to install and setup the program.
shell.run("clear")
print("| Thanks for installing Turtly Farmer |")
print("------")
print("Are you sure you want to install?")
print("type yes to confirm")
print("DISCLAMER: Installing will delete everything in this turtle")
print("------")
confirmation = read()
if confirmation == "yes" then
	shell.run("clear")
	shell.run("delete *")
	shell.run("clear")
	print("Starting installation")
	shell.run("pastebin get 6GLVxDcc turtlyfarmer.lua")
	shell.run("pastebin get H19Eqf45 startup.lua")
	shell.run("clear")
	print("Installation finished; rebooting in 5sec")
	sleep(5)
	shell.run("reboot")
else
	print("Installation canceled")
end
