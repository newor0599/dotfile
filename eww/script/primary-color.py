from PIL import Image

def find_dominant_color(filename):
    #Resizing parameters
    image = Image.open(filename)
    image = image.resize((1,1), resample = 0)
    image = image.getpixel((0,0))
    return image
p = find_dominant_color("/home/newor/.config/hypr/wallpaper.jpg")
with open("/home/newor/.config/eww/scss/primary-color.scss","w") as f:
    f.write(fr'$primary: rgb({p[0]},{p[1]},{p[2]});')
print(p)
