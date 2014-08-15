cv=require('luacv')

src=cv.LoadImage("test.png")
if (not src) then error("Can't load source image "..arg[1]) end

print(cv.GetSize(src))

mat = cv.CreateMat(200, 200, cv.CV_8UC3)
cv.Resize(src, mat)
cv.SaveImage("out.png", mat)
