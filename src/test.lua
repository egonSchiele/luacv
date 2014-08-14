cv=require('luacv')

src=cv.LoadImage("test.png", 0)
if (not src) then error("Can't load source image "..arg[1]) end

print(cv.GetSize(src))
