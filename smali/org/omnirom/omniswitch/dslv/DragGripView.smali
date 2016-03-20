.class public Lorg/omnirom/omniswitch/dslv/DragGripView;
.super Landroid/view/View;
.source "DragGripView.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private mColor:I

.field private mGravity:I

.field private mHeight:I

.field private mRidgeGap:F

.field private mRidgePaint:Landroid/graphics/Paint;

.field private mRidgeSize:F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/omnirom/omniswitch/dslv/DragGripView;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100af
        0x10101a5
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/omnirom/omniswitch/dslv/DragGripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/omnirom/omniswitch/dslv/DragGripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const v2, 0x800003

    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mGravity:I

    .line 39
    const v2, 0x33333333

    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mColor:I

    .line 60
    sget-object v2, Lorg/omnirom/omniswitch/dslv/DragGripView;->ATTRS:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mGravity:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mGravity:I

    .line 62
    const/4 v2, 0x1

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mColor:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    .line 67
    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    .line 69
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgePaint:Landroid/graphics/Paint;

    .line 70
    iget-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgePaint:Landroid/graphics/Paint;

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    sub-float v9, v0, v1

    .line 92
    .local v9, "drawWidth":F
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mGravity:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_0

    .line 102
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingLeft()I

    move-result v0

    int-to-float v7, v0

    .line 105
    .local v7, "drawLeft":F
    :goto_0
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mHeight:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    add-float/2addr v0, v1

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v10, v0

    .line 107
    .local v10, "vertRidges":I
    int-to-float v0, v10

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    sub-float v6, v0, v1

    .line 108
    .local v6, "drawHeight":F
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mHeight:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v6

    div-float/2addr v1, v3

    add-float v8, v0, v1

    .line 111
    .local v8, "drawTop":F
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_1
    if-ge v12, v10, :cond_1

    .line 112
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_2
    const/4 v0, 0x4

    if-ge v11, v0, :cond_0

    .line 113
    int-to-float v0, v11

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float v1, v7, v0

    int-to-float v0, v12

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float v2, v8, v0

    int-to-float v0, v11

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    add-float/2addr v3, v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v7

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    add-float/2addr v3, v0

    int-to-float v0, v12

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    add-float/2addr v4, v5

    mul-float/2addr v0, v4

    add-float/2addr v0, v8

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 95
    .end local v6    # "drawHeight":F
    .end local v7    # "drawLeft":F
    .end local v8    # "drawTop":F
    .end local v10    # "vertRidges":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mWidth:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v9

    div-float/2addr v1, v3

    add-float v7, v0, v1

    .line 97
    .restart local v7    # "drawLeft":F
    goto/16 :goto_0

    .line 99
    .end local v7    # "drawLeft":F
    :sswitch_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float v7, v0, v9

    .line 100
    .restart local v7    # "drawLeft":F
    goto/16 :goto_0

    .line 111
    .restart local v6    # "drawHeight":F
    .restart local v8    # "drawTop":F
    .restart local v10    # "vertRidges":I
    .restart local v11    # "x":I
    .restart local v12    # "y":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 121
    .end local v11    # "x":I
    :cond_1
    return-void

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 75
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeGap:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragGripView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mRidgeSize:F

    float-to-int v1, v1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/omnirom/omniswitch/dslv/DragGripView;->setMeasuredDimension(II)V

    .line 83
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 126
    iput p2, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mHeight:I

    .line 127
    iput p1, p0, Lorg/omnirom/omniswitch/dslv/DragGripView;->mWidth:I

    .line 128
    return-void
.end method
