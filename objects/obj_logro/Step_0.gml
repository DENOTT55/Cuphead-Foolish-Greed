

if image_xscale = 0 {instance_destroy()}

image_angle = lerp(image_angle,0,0.25)

bgAlpha = lerp(bgAlpha,bgToAlpha,0.25)

image_xscale = lerp(image_xscale,scale,0.25)
image_yscale = lerp(image_yscale,scale,0.25)

alpha = lerp(alpha,0,0.15)

bgXscale = lerp(bgXscale,bgToXscale,0.3)
bgYscale = lerp(bgYscale,bgToYscale,0.3)

X = lerp(X,ToX,0.3)

TXTalpha = lerp(TXTalpha,TXTToalpha,0.15)
