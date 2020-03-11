# This will wait for a key press NOT ENTER REQUIRED
# begin
#     system("stty raw -echo")
#     str = STDIN.getc
#   ensure
#     system("stty -raw echo")
#   end
#   p str.chr

system('stty raw -echo')
str = STDIN.getc
p str


