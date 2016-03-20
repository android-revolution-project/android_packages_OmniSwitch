.class public Lorg/omnirom/omniswitch/SwitchConfiguration;
.super Ljava/lang/Object;
.source "SwitchConfiguration.java"


# static fields
.field public static mInstance:Lorg/omnirom/omniswitch/SwitchConfiguration;


# instance fields
.field public mActionIconSize:I

.field public mActionIconSizePx:I

.field public mAnimate:Z

.field public mAutoHide:Z

.field public mBackgroundOpacity:F

.field public mBigIconSizePx:I

.field public mButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mDefaultColor:I

.field private mDefaultHandleHeight:I

.field public mDensity:F

.field public mDimBehind:Z

.field public mDragHandleColor:I

.field public mDragHandleHeight:I

.field public mDragHandleOpacity:F

.field public mDragHandleShow:Z

.field public mDragHandleWidth:I

.field public mFlatGlowColor:I

.field public mFlatStyle:Z

.field public mGlowColor:I

.field public mGravity:I

.field public mHorizontalDividerWidth:I

.field public mIconBorder:I

.field public mIconSize:I

.field public mItemChangeWidthX:I

.field public mLevelBackgroundColor:Z

.field public mLevelChangeWidthX:I

.field public mLevelHeight:I

.field public mLimitItemsX:I

.field public mLimitLevelChangeX:Z

.field public mLocation:I

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public mRestrictedMode:Z

.field public mShowLabels:Z

.field public mShowRambar:Z

.field public mSmallIconSizePx:I

.field public mSpeedSwitchButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mStartYRelative:I

.field public mThumbnailHeight:I

.field public mThumbnailWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x3c

    const/4 v2, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBackgroundOpacity:F

    .line 33
    iput v3, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    .line 34
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAnimate:Z

    .line 35
    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconSize:I

    .line 36
    const/16 v1, 0x64

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBigIconSizePx:I

    .line 37
    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mSmallIconSizePx:I

    .line 38
    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSize:I

    .line 39
    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSizePx:I

    .line 40
    const/16 v1, 0x8

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    .line 48
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowLabels:Z

    .line 57
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleShow:Z

    .line 66
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelBackgroundColor:Z

    .line 67
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLimitLevelChangeX:Z

    .line 69
    const/16 v1, 0xa

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLimitItemsX:I

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    .line 87
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mWindowManager:Landroid/view/WindowManager;

    .line 90
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 91
    .local v0, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x7f060000

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDefaultColor:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f060008

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatGlowColor:I

    .line 96
    const/high16 v1, 0x42c80000    # 100.0f

    iget v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDefaultHandleHeight:I

    .line 97
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->hasSystemPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    .line 98
    const/high16 v1, 0x42a00000    # 80.0f

    iget v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    .line 99
    const/high16 v1, 0x42200000    # 40.0f

    iget v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mItemChangeWidthX:I

    .line 100
    iget v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBigIconSizePx:I

    int-to-float v1, v1

    iget v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBigIconSizePx:I

    .line 101
    iget v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mSmallIconSizePx:I

    int-to-float v1, v1

    iget v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mSmallIconSizePx:I

    .line 102
    iget v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSize:I

    int-to-float v1, v1

    iget v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSizePx:I

    .line 103
    const/high16 v1, 0x42700000    # 60.0f

    iget v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelChangeWidthX:I

    .line 104
    iput v3, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mThumbnailWidth:I

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mThumbnailHeight:I

    .line 111
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 112
    return-void

    :cond_0
    move v1, v3

    .line 97
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-object v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mInstance:Lorg/omnirom/omniswitch/SwitchConfiguration;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mInstance:Lorg/omnirom/omniswitch/SwitchConfiguration;

    .line 81
    :cond_0
    sget-object v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mInstance:Lorg/omnirom/omniswitch/SwitchConfiguration;

    return-object v0
.end method

.method private hasSystemPermission(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const-string v1, "android.permission.REMOVE_TASKS"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public calcHorizontalDivider()V
    .locals 4

    .prologue
    .line 222
    const/4 v2, 0x0

    iput v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    .line 223
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOverlayWidth()I

    move-result v2

    iget v3, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxWidth:I

    div-int v1, v2, v3

    .line 224
    .local v1, "numColumns":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 225
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOverlayWidth()I

    move-result v2

    div-int v0, v2, v1

    .line 226
    .local v0, "equalWidth":I
    iget v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxWidth:I

    if-le v0, v2, :cond_0

    .line 227
    iget v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxWidth:I

    sub-int v2, v0, v2

    iput v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    .line 230
    .end local v0    # "equalWidth":I
    :cond_0
    return-void
.end method

.method public getCurrentDisplayHeight()I
    .locals 3

    .prologue
    .line 161
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 162
    .local v1, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 163
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 164
    .local v0, "height":I
    return v0
.end method

.method public getCurrentDisplayWidth()I
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 169
    .local v0, "size":Landroid/graphics/Point;
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 170
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 171
    .local v1, "width":I
    return v1
.end method

.method public getCurrentOffsetEnd()I
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetStart()I

    move-result v0

    iget v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentOffsetStart()I
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mStartYRelative:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getCurrentOverlayWidth()I
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget v0, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxWidth:I

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f28f5c3    # 0.66f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getCustomOffsetEnd(II)I
    .locals 1
    .param p1, "startYRelative"    # I
    .param p2, "handleHeight"    # I

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCustomOffsetStart(I)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method public getCustomOffsetStart(I)I
    .locals 1
    .param p1, "startYRelative"    # I

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, p1

    return v0
.end method

.method public getDefaultOffsetEnd()I
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getDefaultOffsetStart()I

    move-result v0

    iget v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDefaultHandleHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDefaultOffsetStart()I
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDefaultHandleHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 9
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 115
    const-string v4, "drag_handle_location_new"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    .line 116
    const-string v4, "opacity"

    const/16 v5, 0x32

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 117
    .local v2, "opacity":I
    int-to-float v4, v2

    div-float/2addr v4, v8

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBackgroundOpacity:F

    .line 118
    const-string v4, "animate"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAnimate:Z

    .line 119
    const-string v4, "icon_size"

    const-string v5, "60"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "iconSize":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconSize:I

    .line 122
    const-string v4, "show_rambar"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowRambar:Z

    .line 124
    const-string v4, "show_labels"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowLabels:Z

    .line 126
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getDefaultOffsetStart()I

    move-result v4

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    div-int v3, v4, v5

    .line 128
    .local v3, "relHeightStart":I
    const-string v4, "handle_pos_start_relative"

    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mStartYRelative:I

    .line 131
    const-string v4, "handle_height"

    iget v5, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDefaultHandleHeight:I

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleHeight:I

    .line 134
    iget v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconSize:I

    iget v5, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxWidth:I

    .line 135
    iget v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconSize:I

    iget v5, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxHeight:I

    .line 137
    const-string v4, "drag_handle_color"

    iget v5, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDefaultColor:I

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleColor:I

    .line 139
    const-string v4, "drag_handle_opacity"

    const/16 v5, 0x64

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 140
    int-to-float v4, v2

    div-float/2addr v4, v8

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleOpacity:F

    .line 141
    const-string v4, "auto_hide_handle"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAutoHide:Z

    .line 143
    const-string v4, "drag_handle_enable"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleShow:Z

    .line 145
    const-string v4, "dim_behind"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDimBehind:Z

    .line 146
    const-string v4, "gravity"

    const-string v5, "0"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "gravity":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGravity:I

    .line 148
    const/high16 v4, 0x41a00000    # 20.0f

    iget v5, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleWidth:I

    .line 149
    const-string v4, "buttons_new"

    const-string v5, "0:1,1:1,2:1,3:1,4:1,5:1,6:1,7:1"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0:1,1:1,2:1,3:1,4:1,5:1,6:1,7:1"

    invoke-static {v4, v5}, Lorg/omnirom/omniswitch/Utils;->buttonStringToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mButtons:Ljava/util/Map;

    .line 151
    const-string v4, "speed_switch_color"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelBackgroundColor:Z

    .line 152
    const-string v4, "speed_switch_limit"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLimitLevelChangeX:Z

    .line 153
    const-string v4, "speed_switch_button_new"

    const-string v5, "0:1,1:1,2:1,3:1,4:1,5:1"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0:1,1:1,2:1,3:1,4:1,5:1"

    invoke-static {v4, v5}, Lorg/omnirom/omniswitch/Utils;->buttonStringToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mSpeedSwitchButtons:Ljava/util/Map;

    .line 155
    const-string v4, "speed_switch_items"

    const/16 v5, 0xa

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLimitItemsX:I

    .line 156
    const-string v4, "flat_style"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    .line 157
    return-void
.end method
