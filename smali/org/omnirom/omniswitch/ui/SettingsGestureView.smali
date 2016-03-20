.class public Lorg/omnirom/omniswitch/ui/SettingsGestureView;
.super Ljava/lang/Object;
.source "SettingsGestureView.java"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mColor:I

.field private mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

.field private mContext:Landroid/content/Context;

.field private mDeltaY:F

.field private mDensity:F

.field private mDownY:F

.field private mDragButton:Landroid/widget/ImageView;

.field private mDragButtonEnd:Landroid/widget/ImageView;

.field private mDragButtonStart:Landroid/widget/ImageView;

.field private mDragHandle:Landroid/graphics/drawable/Drawable;

.field private mDragHandleEnd:Landroid/graphics/drawable/Drawable;

.field private mDragHandleLimiterHeight:I

.field private mDragHandleMinHeight:I

.field private mDragHandleStart:Landroid/graphics/drawable/Drawable;

.field private mDragHandleViewLeft:Landroid/widget/LinearLayout;

.field private mDragHandleViewRight:Landroid/widget/LinearLayout;

.field private mEndY:I

.field private mHandleHeight:I

.field private mLocation:I

.field private mLocationButton:Landroid/widget/Button;

.field private mOkButton:Landroid/widget/Button;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResetButton:Landroid/widget/Button;

.field private mShowing:Z

.field private mSlop:I

.field private mStartY:I

.field private mStartYRelative:I

.field private mView:Landroid/widget/LinearLayout;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v7, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    .line 80
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    .line 81
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mWindowManager:Landroid/view/WindowManager;

    .line 82
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mPrefs:Landroid/content/SharedPreferences;

    .line 83
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDensity:F

    .line 84
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 85
    .local v1, "size":Landroid/graphics/Point;
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 86
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 87
    .local v2, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mSlop:I

    .line 88
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    .line 90
    const/high16 v3, 0x42200000    # 40.0f

    iget v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDensity:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleLimiterHeight:I

    .line 91
    const/high16 v3, 0x42700000    # 60.0f

    iget v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDensity:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleMinHeight:I

    .line 93
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleStart:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleEnd:Landroid/graphics/drawable/Drawable;

    .line 100
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 103
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    .line 105
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    const v4, 0x7f08002e

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleViewLeft:Landroid/widget/LinearLayout;

    .line 106
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    const v4, 0x7f080033

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleViewRight:Landroid/widget/LinearLayout;

    .line 108
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    const v4, 0x7f080032

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mOkButton:Landroid/widget/Button;

    .line 109
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    const v4, 0x7f080031

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mCancelButton:Landroid/widget/Button;

    .line 110
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocationButton:Landroid/widget/Button;

    .line 111
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    const v4, 0x7f080030

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mResetButton:Landroid/widget/Button;

    .line 113
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButton:Landroid/widget/ImageView;

    .line 114
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SettingsGestureView$1;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView$1;-><init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonStart:Landroid/widget/ImageView;

    .line 156
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonStart:Landroid/widget/ImageView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SettingsGestureView$2;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView$2;-><init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonEnd:Landroid/widget/ImageView;

    .line 192
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonEnd:Landroid/widget/ImageView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;-><init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mOkButton:Landroid/widget/Button;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;-><init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SettingsGestureView$5;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView$5;-><init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocationButton:Landroid/widget/Button;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;-><init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 280
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mResetButton:Landroid/widget/Button;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SettingsGestureView$7;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView$7;-><init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 294
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SettingsGestureView$8;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView$8;-><init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 304
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDownY:F

    return v0
.end method

.method static synthetic access$002(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDownY:F

    return p1
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDeltaY:F

    return v0
.end method

.method static synthetic access$1000(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->getUpperHandleLimit()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iput p1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDeltaY:F

    return p1
.end method

.method static synthetic access$1100(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleMinHeight:I

    return v0
.end method

.method static synthetic access$1200(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleLimiterHeight:I

    return v0
.end method

.method static synthetic access$1300(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    return v0
.end method

.method static synthetic access$1402(Lorg/omnirom/omniswitch/ui/SettingsGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    return p1
.end method

.method static synthetic access$1500(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Lorg/omnirom/omniswitch/SwitchConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocationButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateLayout()V

    return-void
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    return v0
.end method

.method static synthetic access$216(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    return v0
.end method

.method static synthetic access$300(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I

    return v0
.end method

.method static synthetic access$316(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I

    return v0
.end method

.method static synthetic access$400(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateDragHandleLayoutParams()V

    return-void
.end method

.method static synthetic access$500(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonStart:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonEnd:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mSlop:I

    return v0
.end method

.method static synthetic access$900(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->getLowerHandleLimit()I

    move-result v0

    return v0
.end method

.method private getDragHandleContainer()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleViewLeft:Landroid/widget/LinearLayout;

    .line 334
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleViewRight:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method private getLowerHandleLimit()I
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getUpperHandleLimit()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private updateDragHandleImage()V
    .locals 6

    .prologue
    const/16 v5, 0xb4

    .line 361
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandle:Landroid/graphics/drawable/Drawable;

    .line 362
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleStart:Landroid/graphics/drawable/Drawable;

    .line 363
    .local v1, "d1":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleEnd:Landroid/graphics/drawable/Drawable;

    .line 365
    .local v2, "d2":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 366
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v0, v5}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->rotate(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 367
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleEnd:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v4, v5}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->rotate(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 368
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleStart:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v4, v5}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->rotate(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 371
    :cond_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 372
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mColor:I

    invoke-static {v4, v5, v0}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 375
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonStart:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 376
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonStart:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonEnd:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 379
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonEnd:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    return-void
.end method

.method private updateDragHandleLayoutParams()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/4 v3, 0x5

    const/4 v2, 0x3

    const/4 v8, 0x1

    .line 338
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x41a00000    # 20.0f

    iget v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDensity:F

    mul-float/2addr v1, v4

    float-to-double v4, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v1, v4

    iget v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I

    iget v5, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 340
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    if-ne v1, v8, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 341
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleLimiterHeight:I

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 346
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    iget v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleLimiterHeight:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 347
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    if-ne v1, v8, :cond_1

    move v1, v2

    :goto_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 348
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonStart:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleLimiterHeight:I

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 353
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    if-ne v1, v8, :cond_2

    :goto_2
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 354
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonEnd:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    div-int/2addr v1, v2

    iput v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartYRelative:I

    .line 357
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I

    iget v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mHandleHeight:I

    .line 358
    return-void

    :cond_0
    move v1, v3

    .line 340
    goto :goto_0

    :cond_1
    move v1, v3

    .line 347
    goto :goto_1

    :cond_2
    move v2, v3

    .line 353
    goto :goto_2
.end method

.method private updateFromPrefs()V
    .locals 4

    .prologue
    .line 385
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetStart()I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    .line 386
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetEnd()I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I

    .line 388
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "drag_handle_location_new"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    .line 390
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocationButton:Landroid/widget/Button;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :goto_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "drag_handle_color"

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mColor:I

    .line 397
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocationButton:Landroid/widget/Button;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleViewLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 320
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleViewRight:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 322
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateDragHandleImage()V

    .line 323
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateDragHandleLayoutParams()V

    .line 325
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->getDragHandleContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->getDragHandleContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->getDragHandleContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonEnd:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    return-void
.end method


# virtual methods
.method public getGesturePanelLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 307
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const/4 v4, 0x2

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 313
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 314
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 315
    return-object v0
.end method

.method public handleRotation()V
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartYRelative:I

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCustomOffsetStart(I)I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    .line 439
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    iget v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartYRelative:I

    iget v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mHandleHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCustomOffsetEnd(II)I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I

    .line 440
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateLayout()V

    .line 441
    return-void
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 415
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mShowing:Z

    if-nez v1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 420
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mShowing:Z

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.omnirom.omniswitch.ACTION_HANDLE_SHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mShowing:Z

    return v0
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getDefaultOffsetStart()I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I

    .line 429
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getDefaultOffsetEnd()I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I

    .line 430
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateLayout()V

    .line 431
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 400
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 412
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateFromPrefs()V

    .line 404
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateLayout()V

    .line 406
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->getGesturePanelLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mShowing:Z

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.omnirom.omniswitch.ACTION_HANDLE_HIDE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
