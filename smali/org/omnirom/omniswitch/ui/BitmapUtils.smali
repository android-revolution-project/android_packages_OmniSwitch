.class public Lorg/omnirom/omniswitch/ui/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "color"    # I
    .param p2, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 82
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 85
    .local v1, "b1":Landroid/graphics/drawable/BitmapDrawable;
    const v2, 0xffffff

    and-int/2addr p1, v2

    .line 86
    const/high16 v2, -0x1000000

    or-int/2addr p1, v2

    .line 87
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 88
    return-object v1
.end method

.method public static compose(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "iconBack"    # Landroid/graphics/drawable/Drawable;
    .param p4, "iconMask"    # Landroid/graphics/drawable/Drawable;
    .param p5, "iconUpon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "scale"    # F

    .prologue
    .line 150
    move-object v9, p1

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 151
    .local v2, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 152
    .local v8, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 155
    .local v6, "height":I
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 156
    const/high16 p6, 0x3f800000    # 1.0f

    .line 159
    :cond_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 162
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 165
    .local v7, "oldBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 166
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10, v8, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 168
    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    move/from16 v0, p6

    move/from16 v1, p6

    invoke-virtual {v4, v0, v1, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 169
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 171
    if-eqz p4, :cond_1

    .line 172
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v9, p4

    .line 173
    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 175
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 177
    :cond_1
    if-eqz p3, :cond_2

    .line 178
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 181
    .local v5, "finalBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p3, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 183
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 184
    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v4, v3, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 185
    move-object v3, v5

    .line 187
    .end local v5    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_2
    if-eqz p5, :cond_3

    .line 188
    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 190
    :cond_3
    invoke-virtual {p1, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 191
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v9
.end method

.method public static getDefaultActivityIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "glowColor"    # I
    .param p2, "src"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 111
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "src":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    .local v1, "b":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 115
    .local v7, "margin":I
    div-int/lit8 v6, v7, 0x2

    .line 118
    .local v6, "halfMargin":I
    const/16 v5, 0x18

    .line 121
    .local v5, "glowRadius":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, "alpha":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, v7

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 128
    .local v2, "bmp":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 131
    .local v8, "paint":Landroid/graphics/Paint;
    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    new-instance v4, Landroid/graphics/LightingColorFilter;

    const/4 v9, 0x1

    invoke-direct {v4, p1, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 135
    .local v4, "emphasize":Landroid/graphics/ColorFilter;
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 136
    int-to-float v9, v6

    int-to-float v10, v6

    invoke-virtual {v3, v1, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 138
    new-instance v9, Landroid/graphics/BlurMaskFilter;

    int-to-float v10, v5

    sget-object v11, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v9, v10, v11}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 139
    int-to-float v9, v6

    int-to-float v10, v6

    invoke-virtual {v3, v0, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 141
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v9
.end method

.method public static overlay(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "b"    # Landroid/graphics/drawable/Drawable;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 195
    add-int/lit8 v2, p4, 0x28

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 199
    .local v1, "c":Landroid/graphics/Canvas;
    const/4 v2, 0x0

    const/16 v3, 0x28

    invoke-virtual {p1, v2, v3, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public static resize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IIF)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconSize"    # I
    .param p3, "borderSize"    # I
    .param p4, "density"    # F

    .prologue
    .line 50
    int-to-float v6, p2

    mul-float/2addr v6, p4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 51
    .local v4, "size":I
    int-to-float v6, p3

    mul-float/2addr v6, p4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 53
    .local v3, "border":I
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, "b":Landroid/graphics/Bitmap;
    add-int v6, v4, v3

    mul-int/lit8 v7, v3, 0x3

    add-int/2addr v7, v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 58
    .local v2, "bmResult":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    .local v5, "tempCanvas":Landroid/graphics/Canvas;
    const/4 v6, 0x1

    invoke-static {v0, v4, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    .local v1, "bitmapResized":Landroid/graphics/Bitmap;
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    int-to-float v7, v3

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 63
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v6
.end method

.method public static rotate(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "deg"    # I

    .prologue
    const/4 v6, 0x0

    .line 40
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 43
    .local v1, "bmResult":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 44
    .local v2, "tempCanvas":Landroid/graphics/Canvas;
    int-to-float v3, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 45
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 46
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method public static shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 92
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v7, 0x40a00000    # 5.0f

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 95
    .local v2, "blurFilter":Landroid/graphics/BlurMaskFilter;
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .local v6, "shadowPaint":Landroid/graphics/Paint;
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 98
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 99
    .local v5, "offsetXY":[I
    invoke-virtual {v0, v6, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, "b2":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 103
    .local v3, "bmResult":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 104
    .local v4, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4, v1, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 105
    const/4 v7, 0x0

    aget v7, v5, v7

    neg-int v7, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v4, v0, v7, v8, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v7
.end method
