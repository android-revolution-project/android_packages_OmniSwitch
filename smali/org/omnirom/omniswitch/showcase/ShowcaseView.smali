.class public Lorg/omnirom/omniswitch/showcase/ShowcaseView;
.super Landroid/widget/RelativeLayout;
.source "ShowcaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;,
        Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;
    }
.end annotation


# instance fields
.field private backColor:I

.field private final buttonText:Ljava/lang/String;

.field private detailTextColor:I

.field private hasCustomClickListener:Z

.field private isRedundant:Z

.field private legacyShowcaseX:F

.field private legacyShowcaseY:F

.field private mAlteredText:Z

.field private mBestTextPosition:[F

.field private mDynamicDetailLayout:Landroid/text/DynamicLayout;

.field private final mEndButton:Landroid/widget/Button;

.field private mEraser:Landroid/graphics/Paint;

.field private mEventListener:Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;

.field private mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

.field private mOrientation:I

.field private mPaintDetail:Landroid/text/TextPaint;

.field private mPaintTitle:Landroid/graphics/Paint;

.field private mSubText:Ljava/lang/String;

.field private mTitleText:Ljava/lang/String;

.field private metricScale:F

.field private scaleMultiplier:F

.field private showcase:Landroid/graphics/drawable/Drawable;

.field public showcaseRadius:F

.field private showcaseX:F

.field private showcaseY:F

.field private titleTextColor:I

.field private voidedArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseX:F

    .line 81
    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseY:F

    .line 82
    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseRadius:F

    .line 83
    iput v3, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    .line 84
    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->legacyShowcaseX:F

    .line 85
    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->legacyShowcaseY:F

    .line 86
    iput-boolean v6, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->isRedundant:Z

    .line 87
    iput-boolean v6, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->hasCustomClickListener:Z

    .line 97
    iput v7, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->detailTextColor:I

    .line 98
    iput v7, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->titleTextColor:I

    .line 101
    iput-boolean v6, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mAlteredText:Z

    .line 102
    iput v3, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->scaleMultiplier:F

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lorg/omnirom/omniswitch/R$styleable;->ShowcaseView:[I

    const v4, 0x7f010007

    const v5, 0x7f0a0004

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 120
    .local v1, "styled":Landroid/content/res/TypedArray;
    const-string v2, "#F0333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->backColor:I

    .line 122
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->detailTextColor:I

    .line 124
    const/4 v2, 0x2

    const-string v3, "#49C0EC"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->titleTextColor:I

    .line 127
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->buttonText:Ljava/lang/String;

    .line 128
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    .line 131
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030011

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEndButton:Landroid/widget/Button;

    .line 133
    iget v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    const/high16 v3, 0x42bc0000    # 94.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseRadius:F

    .line 135
    new-instance v0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    invoke-direct {v0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;-><init>()V

    .line 136
    .local v0, "options":Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getId()I

    move-result v2

    iput v2, v0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->showcaseId:I

    .line 137
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setConfigOptions(Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;)V

    .line 138
    return-void
.end method

.method private fadeOutShowcase()V
    .locals 1

    .prologue
    .line 852
    new-instance v0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$4;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView$4;-><init>(Lorg/omnirom/omniswitch/showcase/ShowcaseView;)V

    invoke-static {p0, v0}, Lorg/omnirom/omniswitch/showcase/AnimationUtils;->createFadeOutAnimation(Ljava/lang/Object;Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 858
    return-void
.end method

.method private getBestTextPosition(II)[F
    .locals 7
    .param p1, "canvasW"    # I
    .param p2, "canvasH"    # I

    .prologue
    const/high16 v5, 0x41c00000    # 24.0f

    .line 758
    iget-object v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v2

    .line 759
    .local v1, "spaceTop":F
    iget-object v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    int-to-float v2, v2

    const/high16 v3, 0x42800000    # 64.0f

    iget v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    mul-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 765
    .local v0, "spaceBottom":F
    const/4 v2, 0x3

    new-array v3, v2, [F

    const/4 v2, 0x0

    iget v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    mul-float/2addr v4, v5

    aput v4, v3, v2

    const/4 v4, 0x1

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    const/high16 v2, 0x43000000    # 128.0f

    iget v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    mul-float/2addr v2, v5

    :goto_0
    aput v2, v3, v4

    const/4 v2, 0x2

    int-to-float v4, p1

    const/high16 v5, 0x42400000    # 48.0f

    iget v6, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v3, v2

    return-object v3

    :cond_0
    iget v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    mul-float/2addr v2, v5

    iget-object v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    goto :goto_0
.end method

.method private getConfigOptions()Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    if-nez v0, :cond_0

    .line 969
    new-instance v0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    invoke-direct {v0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    .line 970
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    goto :goto_0
.end method

.method private static getShowcaseOverlayParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 204
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const/4 v4, 0x0

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 211
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 212
    return-object v0
.end method

.method private init()V
    .locals 12

    .prologue
    const v11, -0xbbbbbc

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    .line 362
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "showcase_internal"

    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasShot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getConfigOptions()Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    move-result-object v6

    iget v6, v6, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->showcaseId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    .local v0, "hasShot":Z
    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    iget v4, v4, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->shotType:I

    if-ne v4, v7, :cond_1

    .line 368
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setVisibility(I)V

    .line 369
    iput-boolean v7, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->isRedundant:Z

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    .line 374
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 376
    .local v2, "mBlender":Landroid/graphics/PorterDuffXfermode;
    invoke-virtual {p0, p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    .line 379
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    iget v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->titleTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {v4, v8, v10, v8, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 381
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    const/high16 v5, 0x41c00000    # 24.0f

    iget v6, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 382
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 384
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    iput-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    .line 385
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    iget v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->detailTextColor:I

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 386
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    invoke-virtual {v4, v8, v10, v8, v11}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 387
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    const/high16 v5, 0x41800000    # 16.0f

    iget v6, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 388
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 390
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    .line 391
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    const v5, 0xffffff

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 393
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 394
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 396
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    iget-boolean v4, v4, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->noButton:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 397
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 398
    .local v1, "lps":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 399
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 400
    iget v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->metricScale:F

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 401
    .local v3, "margin":I
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 402
    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 403
    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 404
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEndButton:Landroid/widget/Button;

    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->buttonText:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->buttonText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-boolean v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->hasCustomClickListener:Z

    if-nez v4, :cond_2

    .line 408
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_2
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {p0, v4}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 405
    :cond_3
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x104000a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static insertShowcaseView(FFLandroid/view/WindowManager;Landroid/content/Context;IILorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;)Lorg/omnirom/omniswitch/showcase/ShowcaseView;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "windowManager"    # Landroid/view/WindowManager;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "title"    # I
    .param p5, "detailText"    # I
    .param p6, "options"    # Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    .prologue
    .line 217
    new-instance v0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    invoke-direct {v0, p3}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "sv":Lorg/omnirom/omniswitch/showcase/ShowcaseView;
    if-eqz p6, :cond_0

    .line 219
    invoke-direct {v0, p6}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setConfigOptions(Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;)V

    .line 220
    :cond_0
    invoke-static {}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getShowcaseOverlayParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {v0, p0, p1}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setShowcasePosition(FF)V

    .line 223
    invoke-virtual {v0, p4, p5}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setText(II)V

    .line 224
    return-object v0
.end method

.method private makeVoidedRect()Z
    .locals 9

    .prologue
    .line 781
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseX:F

    iget v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->legacyShowcaseX:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseY:F

    iget v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->legacyShowcaseY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    .line 783
    :cond_0
    iget v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseX:F

    float-to-int v0, v4

    .local v0, "cx":I
    iget v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseY:F

    float-to-int v1, v4

    .line 784
    .local v1, "cy":I
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 785
    .local v3, "dw":I
    iget-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 787
    .local v2, "dh":I
    new-instance v4, Landroid/graphics/Rect;

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v0, v5

    div-int/lit8 v6, v2, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v0

    div-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v1

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    .line 790
    iget v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseX:F

    iput v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->legacyShowcaseX:F

    .line 791
    iget v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseY:F

    iput v4, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->legacyShowcaseY:F

    .line 793
    const/4 v4, 0x1

    .line 796
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    .end local v2    # "dh":I
    .end local v3    # "dw":I
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setConfigOptions(Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;)V
    .locals 0
    .param p1, "options"    # Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    .prologue
    .line 974
    iput-object p1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    .line 975
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 668
    iget v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseX:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseY:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->isRedundant:Z

    if-eqz v0, :cond_1

    .line 669
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 746
    :goto_0
    return-void

    .line 673
    :cond_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getMeasuredHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 675
    .local v8, "b":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 678
    .local v9, "c":Landroid/graphics/Canvas;
    iget v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->backColor:I

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 681
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 682
    .local v10, "mm":Landroid/graphics/Matrix;
    iget v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->scaleMultiplier:F

    iget v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->scaleMultiplier:F

    iget v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseX:F

    iget v3, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseY:F

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 683
    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 686
    iget v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseX:F

    iget v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseY:F

    iget v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseRadius:F

    iget-object v3, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEraser:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 688
    invoke-direct {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->makeVoidedRect()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mAlteredText:Z

    if-eqz v0, :cond_8

    :cond_2
    const/4 v12, 0x1

    .line 689
    .local v12, "recalculateText":Z
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mAlteredText:Z

    .line 691
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->voidedArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 692
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcase:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 694
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 698
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :goto_2
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 704
    const/4 v8, 0x0

    .line 706
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mTitleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mSubText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 707
    :cond_3
    if-eqz v12, :cond_4

    .line 708
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getBestTextPosition(II)[F

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mBestTextPosition:[F

    .line 712
    :cond_4
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mTitleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 714
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 715
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    .line 716
    .local v13, "width":F
    iget v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOrientation:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mBestTextPosition:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v13, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mBestTextPosition:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 719
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mTitleText:Ljava/lang/String;

    iget-object v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mBestTextPosition:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mBestTextPosition:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintTitle:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 721
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 724
    .end local v13    # "width":F
    :cond_5
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mSubText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 725
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 726
    if-eqz v12, :cond_6

    .line 727
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mSubText:Ljava/lang/String;

    iget-object v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mPaintDetail:Landroid/text/TextPaint;

    iget-object v3, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mBestTextPosition:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v5, 0x3f99999a    # 1.2f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    .line 732
    :cond_6
    iget v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_9

    .line 733
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mBestTextPosition:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mBestTextPosition:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 740
    :goto_3
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 741
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 745
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 688
    .end local v12    # "recalculateText":Z
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 699
    .restart local v12    # "recalculateText":Z
    :catch_0
    move-exception v11

    .line 701
    .local v11, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v11}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .line 735
    .end local v11    # "npe":Ljava/lang/NullPointerException;
    :cond_9
    iget v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOrientation:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mDynamicDetailLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v2}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_3
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEventListener:Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEventListener:Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;

    invoke-interface {v0, p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;->onShowcaseViewHide(Lorg/omnirom/omniswitch/showcase/ShowcaseView;)V

    .line 844
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 845
    invoke-direct {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->fadeOutShowcase()V

    .line 849
    :goto_0
    return-void

    .line 847
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 824
    iget-object v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    iget v1, v1, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->shotType:I

    if-ne v1, v4, :cond_0

    .line 825
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "showcase_internal"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 827
    .local v0, "internal":Landroid/content/SharedPreferences;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 828
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasShot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getConfigOptions()Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    move-result-object v3

    iget v3, v3, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->showcaseId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 837
    .end local v0    # "internal":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->hide()V

    .line 838
    return-void

    .line 832
    .restart local v0    # "internal":Landroid/content/SharedPreferences;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasShot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getConfigOptions()Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    move-result-object v3

    iget v3, v3, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->showcaseId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 884
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 885
    .local v2, "xDelta":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 886
    .local v3, "yDelta":F
    float-to-double v5, v2

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v7, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 889
    .local v0, "distanceFromFocus":D
    iget-object v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    iget-boolean v5, v5, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->hideOnClickOutside:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseRadius:F

    float-to-double v5, v5

    cmpl-double v5, v0, v5

    if-lez v5, :cond_1

    .line 890
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->hide()V

    .line 894
    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mOptions:Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    iget-boolean v5, v5, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->block:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseRadius:F

    float-to-double v5, v5

    cmpl-double v5, v0, v5

    if-gtz v5, :cond_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setOnShowcaseEventListener(Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;

    .prologue
    .line 663
    iput-object p1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mEventListener:Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;

    .line 664
    return-void
.end method

.method public setShowcasePosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 467
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->isRedundant:Z

    if-eqz v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 470
    :cond_0
    iput p1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseX:F

    .line 471
    iput p2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->showcaseY:F

    .line 472
    invoke-direct {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->init()V

    .line 473
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->invalidate()V

    goto :goto_0
.end method

.method public setText(II)V
    .locals 3
    .param p1, "titleTextResId"    # I
    .param p2, "subTextResId"    # I

    .prologue
    .line 915
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "titleText":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "subText":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "subText"    # Ljava/lang/String;

    .prologue
    .line 922
    iput-object p1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mTitleText:Ljava/lang/String;

    .line 923
    iput-object p2, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mSubText:Ljava/lang/String;

    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->mAlteredText:Z

    .line 925
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->invalidate()V

    .line 926
    return-void
.end method
