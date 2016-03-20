.class public Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static mDensity:F


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lorg/omnirom/omniswitch/colorpicker/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 67
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 71
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    .line 75
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 80
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 102
    const/16 v0, 0xff

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    .line 103
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    .line 104
    iput v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    .line 105
    iput v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    .line 107
    const-string v0, "Alpha"

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 108
    const v0, -0xe3e3e4

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    .line 109
    const v0, -0x919192

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderColor:I

    .line 110
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    .line 116
    iput v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 147
    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->init()V

    .line 148
    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 360
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 361
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 363
    .local v2, "width":F
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 364
    .local v0, "p":Landroid/graphics/Point;
    int-to-float v3, p1

    mul-float/2addr v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 365
    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 366
    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 201
    const/16 v3, 0x169

    new-array v1, v3, [I

    .line 203
    .local v1, "hue":[I
    const/4 v0, 0x0

    .line 204
    .local v0, "count":I
    array-length v3, v1

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 205
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v1, v0

    .line 204
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-object v1
.end method

.method private calculateRequiredOffset()F
    .locals 3

    .prologue
    .line 193
    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 195
    .local v0, "offset":F
    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 197
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v0

    return v1
.end method

.method private chooseHeight(II)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "size"    # I

    .prologue
    .line 597
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    .line 600
    .end local p2    # "size":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "size":I
    :cond_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result p2

    goto :goto_0
.end method

.method private chooseWidth(II)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "size"    # I

    .prologue
    .line 589
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    .line 592
    .end local p2    # "size":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "size":I
    :cond_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->getPrefferedWidth()I

    move-result p2

    goto :goto_0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 292
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaPattern:Lorg/omnirom/omniswitch/colorpicker/AlphaPatternDrawable;

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v11, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 299
    .local v11, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    iget v0, v11, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    iget v0, v11, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v0, v2

    iget v0, v11, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 305
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaPattern:Lorg/omnirom/omniswitch/colorpicker/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lorg/omnirom/omniswitch/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 307
    const/4 v0, 0x3

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    aput v1, v8, v0

    const/4 v0, 0x1

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    aput v1, v8, v0

    const/4 v0, 0x2

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    aput v1, v8, v0

    .line 308
    .local v8, "hsv":[F
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 309
    .local v5, "color":I
    const/4 v0, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 311
    .local v6, "acolor":I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget v3, v11, Landroid/graphics/RectF;->right:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 314
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 316
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 318
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    .line 319
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    sget v4, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 323
    :cond_2
    const/high16 v0, 0x40800000    # 4.0f

    sget v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v12, v0, v1

    .line 324
    .local v12, "rectWidth":F
    iget v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v9

    .line 326
    .local v9, "p":Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 327
    .local v10, "r":Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 328
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 329
    iget v0, v11, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 330
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 332
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 260
    iget-object v10, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 263
    .local v10, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 269
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->buildHueColorArray()[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 272
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 277
    const/high16 v0, 0x40800000    # 4.0f

    sget v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    div-float v11, v0, v12

    .line 279
    .local v11, "rectHeight":F
    iget v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v8

    .line 281
    .local v8, "p":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 282
    .local v9, "r":Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->left:F

    .line 283
    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 284
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 285
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    .line 287
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v12, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 289
    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 221
    iget-object v10, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 222
    .local v10, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    .line 225
    .local v11, "rgb":I
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 234
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_1

    .line 239
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 242
    :cond_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v6, v11

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 244
    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 246
    .local v8, "mShader":Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 247
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 249
    iget v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v9

    .line 250
    .local v9, "p":Landroid/graphics/Point;
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 254
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 255
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 257
    return-void
.end method

.method private getPrefferedHeight()I
    .locals 4

    .prologue
    .line 613
    const/high16 v1, 0x43480000    # 200.0f

    sget v2, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 614
    .local v0, "height":I
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 615
    int-to-float v1, v0

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 617
    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 4

    .prologue
    .line 605
    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    .line 606
    .local v0, "width":I
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 607
    int-to-float v1, v0

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 609
    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 5
    .param p1, "hue"    # F

    .prologue
    .line 336
    iget-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 337
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 339
    .local v0, "height":F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 340
    .local v1, "p":Landroid/graphics/Point;
    mul-float v3, p1, v0

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 341
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 342
    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    .line 152
    iget v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    sget v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 153
    iget v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sget v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 154
    iget v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sget v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 155
    iget v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sget v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 156
    iget v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    sget v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    .line 158
    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingOffset:F

    .line 159
    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->initPaintTools()V

    .line 162
    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setFocusableInTouchMode(Z)V

    .line 163
    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setFocusable(Z)V

    .line 164
    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setClickable(Z)V

    .line 165
    return-void
.end method

.method private initPaintTools()V
    .locals 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    .line 169
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 187
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 188
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 189
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 190
    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 523
    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v5, :cond_1

    move v3, v4

    .line 546
    :cond_0
    :goto_0
    return v3

    .line 526
    :cond_1
    const/4 v3, 0x0

    .line 527
    .local v3, "update":Z
    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 528
    .local v1, "startX":I
    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 530
    .local v2, "startY":I
    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 531
    iput v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->pointToHue(F)F

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    .line 533
    const/4 v3, 0x1

    goto :goto_0

    .line 534
    :cond_2
    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 535
    iput v4, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v0

    .line 537
    .local v0, "result":[F
    aget v4, v0, v4

    iput v4, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    .line 538
    aget v4, v0, v8

    iput v4, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    .line 539
    const/4 v3, 0x1

    .line 540
    goto :goto_0

    .end local v0    # "result":[F
    :cond_3
    iget-object v4, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    const/4 v4, 0x2

    iput v4, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->pointToAlpha(I)I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    .line 543
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private pointToAlpha(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 411
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 412
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    .line 414
    .local v1, "width":I
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 415
    const/4 p1, 0x0

    .line 421
    :goto_0
    mul-int/lit16 v2, p1, 0xff

    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    return v2

    .line 416
    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 417
    move p1, v1

    goto :goto_0

    .line 419
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    .line 397
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 398
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 400
    .local v0, "height":F
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 401
    const/4 p1, 0x0

    .line 407
    :goto_0
    mul-float v2, p1, v3

    div-float/2addr v2, v0

    sub-float v2, v3, v2

    return v2

    .line 402
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 403
    move p1, v0

    goto :goto_0

    .line 405
    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 370
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 371
    .local v1, "rect":Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 372
    .local v2, "result":[F
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 373
    .local v3, "width":F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 375
    .local v0, "height":F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 376
    const/4 p1, 0x0

    .line 383
    :goto_0
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 384
    const/4 p2, 0x0

    .line 391
    :goto_1
    const/4 v4, 0x0

    div-float v5, v6, v3

    mul-float/2addr v5, p1

    aput v5, v2, v4

    .line 392
    const/4 v4, 0x1

    div-float v5, v6, v0

    mul-float/2addr v5, p2

    sub-float v5, v6, v5

    aput v5, v2, v4

    .line 393
    return-object v2

    .line 377
    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 378
    move p1, v3

    goto :goto_0

    .line 380
    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    goto :goto_0

    .line 385
    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    .line 386
    move p2, v0

    goto :goto_1

    .line 388
    :cond_3
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 6
    .param p1, "sat"    # F
    .param p2, "val"    # F

    .prologue
    .line 347
    iget-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 348
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 349
    .local v0, "height":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 351
    .local v3, "width":F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 353
    .local v1, "p":Landroid/graphics/Point;
    mul-float v4, p1, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 354
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    mul-float/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 356
    return-object v1
.end method

.method private setUpAlphaRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 663
    iget-boolean v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v5, :cond_0

    .line 678
    :goto_0
    return-void

    .line 667
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 668
    .local v1, "dRect":Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v7

    .line 669
    .local v2, "left":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v5, v6

    add-float v4, v5, v7

    .line 670
    .local v4, "top":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v7

    .line 671
    .local v0, "bottom":F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v7

    .line 673
    .local v3, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 674
    new-instance v5, Lorg/omnirom/omniswitch/colorpicker/AlphaPatternDrawable;

    const/high16 v6, 0x40a00000    # 5.0f

    sget v7, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lorg/omnirom/omniswitch/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaPattern:Lorg/omnirom/omniswitch/colorpicker/AlphaPatternDrawable;

    .line 675
    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaPattern:Lorg/omnirom/omniswitch/colorpicker/AlphaPatternDrawable;

    iget-object v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/omnirom/omniswitch/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setUpHueRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 651
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 653
    .local v1, "dRect":Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v5, v6

    add-float v2, v5, v8

    .line 654
    .local v2, "left":F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v8

    .line 655
    .local v4, "top":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v5, v8

    iget-boolean v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v7

    :goto_0
    sub-float v0, v6, v5

    .line 657
    .local v0, "bottom":F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v8

    .line 659
    .local v3, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 660
    return-void

    .line 655
    .end local v0    # "bottom":F
    .end local v3    # "right":F
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 636
    iget-object v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 637
    .local v1, "dRect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    sub-float v3, v6, v7

    .line 639
    .local v3, "panelSide":F
    iget-boolean v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v6, :cond_0

    .line 640
    iget v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    sub-float/2addr v3, v6

    .line 643
    :cond_0
    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v6, v8

    .line 644
    .local v2, "left":F
    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v6, v8

    .line 645
    .local v5, "top":F
    add-float v0, v5, v3

    .line 646
    .local v0, "bottom":F
    add-float v4, v2, v3

    .line 647
    .local v4, "right":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 648
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 4

    .prologue
    .line 713
    iget v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public isAlphaSliderVisible()Z
    .locals 1

    .prologue
    .line 790
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 216
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 217
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 551
    const/4 v3, 0x0

    .line 552
    .local v3, "width":I
    const/4 v0, 0x0

    .line 554
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 555
    .local v5, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 557
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 558
    .local v4, "widthAllowed":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 560
    .local v1, "heightAllowed":I
    invoke-direct {p0, v5, v4}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->chooseWidth(II)I

    move-result v4

    .line 561
    invoke-direct {p0, v2, v1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->chooseHeight(II)I

    move-result v1

    .line 563
    iget-boolean v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v6, :cond_1

    .line 564
    int-to-float v6, v4

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 568
    if-le v0, v1, :cond_0

    if-eqz v2, :cond_0

    .line 569
    move v0, v1

    .line 570
    int-to-float v6, v0

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v6, v7

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 585
    :goto_0
    invoke-virtual {p0, v3, v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    .line 586
    return-void

    .line 572
    :cond_0
    move v3, v4

    goto :goto_0

    .line 576
    :cond_1
    int-to-float v6, v1

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 578
    if-le v3, v4, :cond_2

    if-eqz v5, :cond_2

    .line 579
    move v3, v4

    .line 580
    int-to-float v6, v4

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    iget v7, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_0

    .line 582
    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 622
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 624
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 625
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 626
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 627
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 628
    iget-object v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 630
    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setUpSatValRect()V

    .line 631
    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setUpHueRect()V

    .line 632
    invoke-direct {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setUpAlphaRect()V

    .line 633
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 492
    const/4 v0, 0x0

    .line 494
    .local v0, "update":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 508
    :goto_0
    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->requestFocus()Z

    .line 510
    iget-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mListener:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mListener:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v3, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    aput v6, v4, v5

    iget v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    aput v5, v4, v1

    const/4 v5, 0x2

    iget v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-interface {v2, v3}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 514
    :cond_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->invalidate()V

    .line 518
    :goto_1
    return v1

    .line 496
    :pswitch_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 497
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 498
    goto :goto_0

    .line 500
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 501
    goto :goto_0

    .line 503
    :pswitch_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 504
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 518
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v13, 0x42480000    # 50.0f

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 427
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 428
    .local v6, "y":F
    const/4 v3, 0x0

    .line 430
    .local v3, "update":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 431
    iget v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v8, :pswitch_data_0

    .line 479
    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    .line 480
    iget-object v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mListener:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v8, :cond_1

    .line 481
    iget-object v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mListener:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v9, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget v12, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    aput v12, v10, v11

    iget v11, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    aput v11, v10, v7

    const/4 v11, 0x2

    iget v12, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v9

    invoke-interface {v8, v9}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 484
    :cond_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->invalidate()V

    .line 487
    :goto_1
    return v7

    .line 435
    :pswitch_0
    iget v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    div-float v9, v5, v13

    add-float v2, v8, v9

    .line 436
    .local v2, "sat":F
    iget v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    div-float v9, v6, v13

    sub-float v4, v8, v9

    .line 437
    .local v4, "val":F
    cmpg-float v8, v2, v10

    if-gez v8, :cond_4

    .line 438
    const/4 v2, 0x0

    .line 443
    :cond_2
    :goto_2
    cmpg-float v8, v4, v10

    if-gez v8, :cond_5

    .line 444
    const/4 v4, 0x0

    .line 448
    :cond_3
    :goto_3
    iput v2, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    .line 449
    iput v4, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    .line 450
    const/4 v3, 0x1

    .line 451
    goto :goto_0

    .line 439
    :cond_4
    cmpl-float v8, v2, v11

    if-lez v8, :cond_2

    .line 440
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    .line 445
    :cond_5
    cmpl-float v8, v4, v11

    if-lez v8, :cond_3

    .line 446
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    .line 453
    .end local v2    # "sat":F
    .end local v4    # "val":F
    :pswitch_1
    iget v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    mul-float v9, v6, v12

    sub-float v1, v8, v9

    .line 454
    .local v1, "hue":F
    cmpg-float v8, v1, v10

    if-gez v8, :cond_7

    .line 455
    const/4 v1, 0x0

    .line 459
    :cond_6
    :goto_4
    iput v1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    .line 460
    const/4 v3, 0x1

    .line 461
    goto :goto_0

    .line 456
    :cond_7
    const/high16 v8, 0x43b40000    # 360.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_6

    .line 457
    const/high16 v1, 0x43b40000    # 360.0f

    goto :goto_4

    .line 463
    .end local v1    # "hue":F
    :pswitch_2
    iget-boolean v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v8, :cond_9

    .line 464
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 466
    :cond_9
    iget v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    int-to-float v8, v8

    mul-float v9, v5, v12

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .line 467
    .local v0, "alpha":I
    if-gez v0, :cond_b

    .line 468
    const/4 v0, 0x0

    .line 472
    :cond_a
    :goto_5
    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    .line 473
    const/4 v3, 0x1

    goto :goto_0

    .line 469
    :cond_b
    const/16 v8, 0xff

    if-le v0, v8, :cond_a

    .line 470
    const/16 v0, 0xff

    goto :goto_5

    .line 487
    .end local v0    # "alpha":I
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 724
    return-void
.end method

.method public setColor(IZ)V
    .locals 12
    .param p1, "color"    # I
    .param p2, "callback"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 735
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 736
    .local v0, "alpha":I
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 737
    .local v4, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 738
    .local v1, "blue":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 739
    .local v2, "green":I
    new-array v3, v7, [F

    .line 741
    .local v3, "hsv":[F
    invoke-static {v4, v2, v1, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 742
    iput v0, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    .line 743
    aget v5, v3, v9

    iput v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    .line 744
    aget v5, v3, v10

    iput v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    .line 745
    aget v5, v3, v11

    iput v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    .line 747
    if-eqz p2, :cond_0

    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mListener:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    .line 748
    iget-object v5, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mListener:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;

    iget v6, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mAlpha:I

    new-array v7, v7, [F

    iget v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mHue:F

    aput v8, v7, v9

    iget v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mSat:F

    aput v8, v7, v10

    iget v8, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mVal:F

    aput v8, v7, v11

    invoke-static {v6, v7}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    invoke-interface {v5, v6}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 751
    :cond_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->invalidate()V

    .line 752
    return-void
.end method

.method public setOnColorChangedListener(Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;

    .prologue
    .line 687
    iput-object p1, p0, Lorg/omnirom/omniswitch/colorpicker/ColorPickerView;->mListener:Lorg/omnirom/omniswitch/colorpicker/ColorPickerView$OnColorChangedListener;

    .line 688
    return-void
.end method
