# This function is returning unique value kind of ABC-123-ABC-123-ABC (where: ABC is random 3-char string, 123–random 3-digit number)
def appcode(barsize=3,count=5)
  (0..count).map{|ind| ind % 2 == 0 ?(0...barsize). map { (65 + rand(26)).chr }.join : (0...barsize).map{rand(10)}.join }.join('-')
end
