.class public Lorg/omnirom/omniswitch/ui/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field mLineWidth:I

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/LinearColorBar;->setWillNotDraw(Z)V

    .line 56
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/LinearColorBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mLineWidth:I

    .line 62
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    return-void

    :cond_0
    move v0, v1

    .line 60
    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/LinearColorBar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/LinearColorBar;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 84
    .local v8, "off":I
    if-gez v8, :cond_0

    const/4 v8, 0x0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 86
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/LinearColorBar;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 87
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mShowingGreen:Z

    if-eqz v0, :cond_1

    .line 88
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    const v5, 0x888888

    const v6, -0x777778

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 94
    :goto_0
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    const v5, 0xa0a0a0

    const v6, -0x5f5f60

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    return-void

    .line 91
    :cond_1
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    const v5, 0x99cc

    const v6, -0xff6634

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/ui/LinearColorBar;->getWidth()I

    move-result v17

    .line 110
    .local v17, "width":I
    const/4 v10, 0x0

    .line 112
    .local v10, "left":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRedRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v14, v10, v1

    .line 113
    .local v14, "right":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v15, v14, v1

    .line 114
    .local v15, "right2":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mGreenRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v16, v15, v1

    .line 117
    .local v16, "right3":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mShowingGreen:Z

    if-eqz v1, :cond_7

    .line 118
    move v8, v15

    .line 119
    .local v8, "indicatorLeft":I
    move/from16 v9, v16

    .line 125
    .local v9, "indicatorRight":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mLastInterestingLeft:I

    if-ne v1, v8, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mLastInterestingRight:I

    if-eq v1, v9, :cond_2

    .line 126
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 128
    if-ge v8, v9, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->top:I

    .line 130
    .local v13, "midTopY":I
    const/4 v12, 0x0

    .line 131
    .local v12, "midBottomY":I
    const/16 v18, 0x2

    .line 132
    .local v18, "xoff":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    const/4 v3, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    int-to-float v5, v13

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    int-to-float v3, v13

    int-to-float v4, v9

    const/4 v5, 0x0

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 141
    move-object/from16 v0, p0

    iget v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mLineWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v11, v1, v2

    .line 142
    .local v11, "lineOffset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x40000000    # -2.0f

    add-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x40000000    # -2.0f

    add-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v8

    add-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v8

    add-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v9

    sub-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v9

    sub-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 151
    .end local v11    # "lineOffset":F
    .end local v12    # "midBottomY":I
    .end local v13    # "midTopY":I
    .end local v18    # "xoff":I
    :cond_1
    move-object/from16 v0, p0

    iput v8, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mLastInterestingLeft:I

    .line 152
    move-object/from16 v0, p0

    iput v9, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mLastInterestingRight:I

    .line 155
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 160
    :cond_3
    if-ge v10, v14, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff6634

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 165
    sub-int v1, v14, v10

    sub-int v17, v17, v1

    .line 166
    move v10, v14

    .line 169
    :cond_4
    move v14, v15

    .line 171
    if-ge v10, v14, :cond_5

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff6634

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 176
    sub-int v1, v14, v10

    sub-int v17, v17, v1

    .line 177
    move v10, v14

    .line 181
    :cond_5
    add-int v14, v10, v17

    .line 182
    if-ge v10, v14, :cond_6

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 188
    :cond_6
    return-void

    .line 121
    .end local v8    # "indicatorLeft":I
    .end local v9    # "indicatorRight":I
    :cond_7
    move v8, v14

    .line 122
    .restart local v8    # "indicatorLeft":I
    move v9, v15

    .restart local v9    # "indicatorRight":I
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 101
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/LinearColorBar;->updateIndicator()V

    .line 102
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "yellow"    # F
    .param p3, "green"    # F

    .prologue
    .line 68
    iput p1, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mRedRatio:F

    .line 69
    iput p2, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mYellowRatio:F

    .line 70
    iput p3, p0, Lorg/omnirom/omniswitch/ui/LinearColorBar;->mGreenRatio:F

    .line 71
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/LinearColorBar;->invalidate()V

    .line 72
    return-void
.end method
