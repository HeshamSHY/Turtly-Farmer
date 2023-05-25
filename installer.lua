-- MIT License
-- 
-- Copyright (c) 2022 HeshamSHY
-- 
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
-- 
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
-- 
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

-- | Turtly Farmer |
-- A ComputerCraft program for turtles to automatically farm wheat
-- Version: 0.1.0
-- Github repo: https://github.com/HeshamSHY/Turtly-Farmer
 
-- Turtly Farmer's installer; to install and setup the program.

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

    shell.run("pastebin get USRWzgnd turtlyfarmer.lua")
    shell.run("pastebin get H19Eqf45 startup.lua")
    shell.run("clear")

    print("Installation finished; rebooting in 5sec")
    sleep(5)

    shell.run("reboot")
else
    print("Installation canceled")
end
