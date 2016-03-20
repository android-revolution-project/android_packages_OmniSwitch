.class public Lorg/omnirom/omniswitch/ui/SwitchGestureView;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;


# instance fields
.field private mActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/ui/PackageTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mAllLists:[Landroid/widget/HorizontalScrollView;

.field private mAutoHideRunnable:Ljava/lang/Runnable;

.field private mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

.field private mContext:Landroid/content/Context;

.field private mCurrentActionItemIndex:I

.field private mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

.field private mCurrentFavoriteItemIndex:I

.field private mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

.field private mCurrentRecentItemIndex:I

.field private mDownPoint:[F

.field private mDragButton:Landroid/widget/ImageView;

.field private mDragHandleHiddenImage:Landroid/graphics/drawable/Drawable;

.field private mDragHandleImage:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mFavoriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/ui/PackageTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleRecentsUpdate:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field private mInitDownPoint:[F

.field private mItemView:Landroid/widget/FrameLayout;

.field private mLevel:I

.field private mLevelBorderIndicator:Landroid/view/View;

.field private mLevelChangeIndicator:Landroid/view/View;

.field private mLevelX:I

.field private mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mLoadedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedLevel:I

.field private mLongPress:Z

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRecentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/ui/PackageTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;

.field private mShowIndicators:Z

.field private mShowTumb:Z

.field private mShowcaseHandleDone:Z

.field private mShowcaseQuickDone:Z

.field private mShowcaseView:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

.field private mShowing:Z

.field private mShowingSpeedSwitcher:Z

.field private mSpeedSwitcher:Z

.field private mToggleDragHandleAnim:Landroid/animation/Animator;

.field private mTriggerThreshholdX:I

.field private mVerticalBorders:[I

.field private mView:Landroid/widget/FrameLayout;

.field private mVirtualBackKey:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v3, 0x32

    iput v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mTriggerThreshholdX:I

    .line 81
    new-array v3, v7, [F

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDownPoint:[F

    .line 82
    new-array v3, v7, [F

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F

    .line 85
    iput-boolean v6, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z

    .line 97
    new-instance v3, Lorg/omnirom/omniswitch/ui/SwitchGestureView$1;

    invoke-direct {v3, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$1;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAutoHideRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 109
    new-instance v3, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;

    invoke-direct {v3, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 127
    new-array v3, v4, [Lorg/omnirom/omniswitch/ui/PackageTextView;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 133
    const/4 v3, 0x4

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    .line 139
    const/4 v3, -0x1

    iput v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I

    .line 141
    new-array v3, v4, [Landroid/widget/HorizontalScrollView;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    .line 145
    iput-boolean v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowIndicators:Z

    .line 146
    iput-boolean v6, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowTumb:Z

    .line 150
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    .line 151
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    .line 153
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mPrefs:Landroid/content/SharedPreferences;

    .line 154
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    .line 155
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLoadedTasks:Ljava/util/List;

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mActionList:Ljava/util/List;

    .line 161
    new-instance v1, Landroid/widget/HorizontalScrollView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, "list":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 163
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v2, "listLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 165
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 166
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    aput-object v1, v3, v5

    .line 168
    new-instance v1, Landroid/widget/HorizontalScrollView;

    .end local v1    # "list":Landroid/widget/HorizontalScrollView;
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 169
    .restart local v1    # "list":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 170
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2    # "listLayout":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .restart local v2    # "listLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 173
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    aput-object v1, v3, v6

    .line 175
    new-instance v1, Landroid/widget/HorizontalScrollView;

    .end local v1    # "list":Landroid/widget/HorizontalScrollView;
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 176
    .restart local v1    # "list":Landroid/widget/HorizontalScrollView;
    invoke-virtual {v1, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 177
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2    # "listLayout":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 178
    .restart local v2    # "listLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 180
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    aput-object v1, v3, v7

    .line 182
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragHandleImage:Landroid/graphics/drawable/Drawable;

    .line 184
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragHandleHiddenImage:Landroid/graphics/drawable/Drawable;

    .line 187
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 190
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mItemView:Landroid/widget/FrameLayout;

    .line 192
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    .line 193
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 293
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    .line 294
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 295
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 341
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getDragHandleLayoutParamsSmall()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateButton()V

    .line 343
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHidden:Z

    return v0
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateDragHandleImage(Z)V

    return-void
.end method

.method static synthetic access$1000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->resetView()V

    return-void
.end method

.method static synthetic access$1300(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    return v0
.end method

.method static synthetic access$1402(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    return p1
.end method

.method static synthetic access$1500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F

    return-object v0
.end method

.method static synthetic access$1600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mTriggerThreshholdX:I

    return v0
.end method

.method static synthetic access$1700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowingSpeedSwitcher:Z

    return v0
.end method

.method static synthetic access$1702(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowingSpeedSwitcher:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;II)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->isValidCoordinate(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->clearViewBackground()V

    return-void
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseQuickDone:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->hideAllBorders()V

    return-void
.end method

.method static synthetic access$2100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->hideAllLists()V

    return-void
.end method

.method static synthetic access$2200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->resetEnvItems()V

    return-void
.end method

.method static synthetic access$2302(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLockedLevel:I

    return p1
.end method

.method static synthetic access$2400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;II)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->calcLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I

    return v0
.end method

.method static synthetic access$2502(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I

    return p1
.end method

.method static synthetic access$2600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getHorizontalGridIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->doLevelChange(I)V

    return-void
.end method

.method static synthetic access$2800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDownPoint:[F

    return-object v0
.end method

.method static synthetic access$2900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->drawLevelChangeBorders(I)V

    return-void
.end method

.method static synthetic access$300(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->startShowcaseQuickSwitcher()V

    return-void
.end method

.method static synthetic access$3000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->switchItem()V

    return-void
.end method

.method static synthetic access$3100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Lorg/omnirom/omniswitch/SwitchConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAutoHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mSpeedSwitcher:Z

    return v0
.end method

.method static synthetic access$3400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->startShowcaseDragHandle()V

    return-void
.end method

.method static synthetic access$3500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->drawCurrentLevelBorders()V

    return-void
.end method

.method static synthetic access$3800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getListItemWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->initAlpha()V

    return-void
.end method

.method static synthetic access$4102(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVirtualBackKey:Z

    return p1
.end method

.method static synthetic access$4200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPress:Z

    return v0
.end method

.method static synthetic access$502(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPress:Z

    return p1
.end method

.method static synthetic access$602(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandleRecentsUpdate:Z

    return p1
.end method

.method static synthetic access$700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Lorg/omnirom/omniswitch/SwitchManager;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;

    return-object v0
.end method

.method static synthetic access$800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z

    return p1
.end method

.method private buildActionList()V
    .locals 5

    .prologue
    .line 1136
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mActionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1137
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-object v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mSpeedSwitchButtons:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1138
    .local v2, "nextKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1140
    .local v1, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-object v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mSpeedSwitchButtons:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1141
    .local v3, "value":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1142
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getActionButton(I)Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    .line 1143
    .local v0, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    if-eqz v0, :cond_0

    .line 1144
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mActionList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1148
    .end local v0    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v3    # "value":Ljava/lang/Boolean;
    :cond_1
    return-void
.end method

.method private buildFavoriteItems(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 788
    const/4 v0, 0x0

    .line 789
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 790
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLimitItemsX:I

    if-ge v1, v0, :cond_1

    .line 791
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 792
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v3

    .line 793
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/omnirom/omniswitch/PackageManager;->getPackageItem(Ljava/lang/String;)Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    move-result-object v4

    .line 794
    if-nez v4, :cond_0

    .line 795
    const-string v3, "SwitchGestureView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {v4}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setIntent(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v4}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLabel(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v0

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    const/16 v7, 0x64

    invoke-virtual {v0, v5, v4, v6, v7}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/PackageManager$PackageItem;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 801
    invoke-virtual {v3, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 802
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v0

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    const/16 v7, 0x3c

    invoke-virtual {v0, v5, v4, v6, v7}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/PackageManager$PackageItem;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 803
    invoke-virtual {v3, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setSmallImage(Landroid/graphics/drawable/Drawable;)V

    .line 804
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 806
    goto :goto_0

    .line 807
    :cond_1
    return-void
.end method

.method private calcLevel(II)I
    .locals 10
    .param p1, "xPos"    # I
    .param p2, "yPos"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x0

    const/4 v8, -0x2

    const/4 v3, 0x1

    const/4 v7, 0x2

    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, "isLevelSwitchArea":Z
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v5, :cond_3

    .line 852
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v5}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v5

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v6, v6, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelChangeWidthX:I

    sub-int/2addr v5, v6

    if-le p1, v5, :cond_2

    move v0, v3

    .line 856
    :goto_0
    iget v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    .line 857
    .local v2, "oldLevel":I
    const/4 v1, -0x2

    .line 858
    .local v1, "newLevel":I
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    aget v4, v5, v4

    if-ge p2, v4, :cond_5

    .line 859
    const/4 v1, -0x2

    .line 882
    :cond_0
    :goto_1
    if-eq v2, v1, :cond_f

    .line 883
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLimitLevelChangeX:Z

    if-eqz v3, :cond_f

    .line 884
    if-eq v2, v8, :cond_1

    if-ne v2, v7, :cond_c

    .line 886
    :cond_1
    iget v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLockedLevel:I

    .line 899
    :goto_2
    return v3

    .end local v1    # "newLevel":I
    .end local v2    # "oldLevel":I
    :cond_2
    move v0, v4

    .line 852
    goto :goto_0

    .line 854
    :cond_3
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelChangeWidthX:I

    if-ge p1, v5, :cond_4

    move v0, v3

    :goto_3
    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_3

    .line 860
    .restart local v1    # "newLevel":I
    .restart local v2    # "oldLevel":I
    :cond_5
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    aget v4, v4, v3

    if-ge p2, v4, :cond_7

    .line 861
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mActionList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 862
    const/4 v1, -0x1

    goto :goto_1

    .line 864
    :cond_6
    const/4 v1, -0x2

    goto :goto_1

    .line 866
    :cond_7
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    aget v3, v4, v3

    if-lt p2, v3, :cond_9

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    aget v3, v3, v7

    if-ge p2, v3, :cond_9

    .line 867
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 868
    const/4 v1, 0x0

    goto :goto_1

    .line 869
    :cond_8
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 870
    const/4 v1, 0x1

    goto :goto_1

    .line 872
    :cond_9
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    aget v3, v3, v7

    if-lt p2, v3, :cond_b

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    aget v3, v3, v9

    if-ge p2, v3, :cond_b

    .line 873
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 874
    const/4 v1, 0x1

    goto :goto_1

    .line 876
    :cond_a
    const/4 v1, 0x2

    goto :goto_1

    .line 878
    :cond_b
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    aget v3, v3, v9

    if-lt p2, v3, :cond_0

    .line 879
    const/4 v1, 0x2

    goto :goto_1

    .line 888
    :cond_c
    if-eq v1, v8, :cond_d

    if-ne v1, v7, :cond_e

    .line 890
    :cond_d
    iput v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLockedLevel:I

    move v3, v1

    .line 891
    goto :goto_2

    .line 893
    :cond_e
    if-eq v1, v8, :cond_f

    if-eq v1, v7, :cond_f

    if-nez v0, :cond_f

    .line 895
    move v1, v2

    :cond_f
    move v3, v1

    .line 899
    goto :goto_2
.end method

.method private calcVerticalBorders()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 990
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F

    aget v2, v2, v4

    float-to-int v2, v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 991
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F

    aget v1, v1, v4

    float-to-int v1, v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    aput v1, v0, v4

    .line 992
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F

    aget v2, v2, v4

    float-to-int v2, v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 993
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F

    aget v2, v2, v4

    float-to-int v2, v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 994
    return-void
.end method

.method private clearViewBackground()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mItemView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 847
    return-void
.end method

.method private doLevelChange(I)V
    .locals 11
    .param p1, "oldLevel"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 903
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->clearViewBackground()V

    .line 904
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->resetEnvItems()V

    .line 906
    const/4 v3, 0x0

    .line 907
    .local v3, "idx":I
    const/4 v5, 0x0

    .line 908
    .local v5, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    const/4 v6, 0x0

    .line 910
    .local v6, "oldList":Landroid/widget/HorizontalScrollView;
    iget v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v7}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v7

    invoke-direct {p0, v7}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getCurrentList(I)Ljava/util/List;

    move-result-object v1

    .line 911
    .local v1, "currentList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/ui/PackageTextView;>;"
    if-eqz v1, :cond_0

    .line 912
    iget v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I

    invoke-direct {p0, v1, v7}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->roundIndex(Ljava/util/List;I)I

    move-result v3

    .line 916
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    check-cast v5, Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 918
    .restart local v5    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    :cond_0
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 919
    iget-object v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v8

    aget-object v6, v7, v8

    .line 922
    :cond_1
    move-object v2, v6

    .line 923
    .local v2, "finalOldList":Landroid/widget/HorizontalScrollView;
    move v4, v3

    .line 925
    .local v4, "idxFinal":I
    iget v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-nez v7, :cond_5

    .line 926
    iget-object v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_4

    .line 927
    iput v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentRecentItemIndex:I

    .line 928
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->setViewBackground()V

    .line 929
    invoke-direct {p0, v5}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutTask(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    .line 959
    :cond_2
    :goto_0
    iget-object v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    iget v8, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v8}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v8

    aget-object v0, v7, v8

    .line 960
    .local v0, "actualView":Landroid/widget/HorizontalScrollView;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 961
    if-eqz v2, :cond_8

    .line 962
    invoke-virtual {v0, v9}, Landroid/widget/HorizontalScrollView;->setScaleY(F)V

    .line 968
    :goto_1
    iget-object v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;

    new-instance v8, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;

    invoke-direct {v8, p0, v0, v4, v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Landroid/widget/HorizontalScrollView;ILandroid/widget/HorizontalScrollView;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 987
    .end local v0    # "actualView":Landroid/widget/HorizontalScrollView;
    :cond_3
    :goto_2
    return-void

    .line 930
    :cond_4
    iget-object v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 931
    iput v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentFavoriteItemIndex:I

    .line 932
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->setViewBackground()V

    .line 933
    invoke-direct {p0, v5}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutFavorite(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    goto :goto_0

    .line 935
    :cond_5
    iget v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 936
    iget-object v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 937
    iput v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentFavoriteItemIndex:I

    .line 938
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->setViewBackground()V

    .line 939
    invoke-direct {p0, v5}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutFavorite(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    goto :goto_0

    .line 941
    :cond_6
    iget v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-ne v7, v10, :cond_7

    .line 942
    iget-object v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mActionList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 943
    iput v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentActionItemIndex:I

    .line 944
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->setViewBackground()V

    .line 945
    invoke-direct {p0, v5}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutAction(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    goto :goto_0

    .line 948
    :cond_7
    if-eqz v2, :cond_3

    .line 949
    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lorg/omnirom/omniswitch/ui/SwitchGestureView$8;

    invoke-direct {v8, p0, v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$8;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 965
    .restart local v0    # "actualView":Landroid/widget/HorizontalScrollView;
    :cond_8
    invoke-virtual {v0, v9}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    goto :goto_1
.end method

.method private drawCurrentLevelBorders()V
    .locals 2

    .prologue
    .line 1476
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowIndicators:Z

    if-nez v0, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1479
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1480
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1481
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    .line 1484
    :cond_2
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getLevelStripeBorderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    .line 1485
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1487
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1488
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private drawLevelChangeBorders(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1493
    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowIndicators:Z

    if-nez v2, :cond_1

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v2, :cond_4

    .line 1498
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelChangeWidthX:I

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_3

    .line 1502
    :cond_2
    :goto_1
    if-nez v0, :cond_5

    .line 1503
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1504
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1505
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1498
    goto :goto_1

    .line 1500
    :cond_4
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelChangeWidthX:I

    if-le p1, v2, :cond_2

    move v0, v1

    goto :goto_1

    .line 1509
    :cond_5
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1510
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getLevelChangeBorderView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    .line 1511
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1512
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1513
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private fillList(I)V
    .locals 7
    .param p1, "level"    # I

    .prologue
    .line 1390
    if-ltz p1, :cond_0

    const/4 v5, 0x2

    if-le p1, v5, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1394
    .local v3, "listLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1396
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v1

    .line 1397
    .local v1, "header":Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getListItemParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1399
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getCurrentList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1400
    .local v4, "nextItem":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/omnirom/omniswitch/ui/PackageTextView;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1401
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1402
    .local v2, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getListItemParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1405
    .end local v2    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    :cond_2
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    .line 1406
    .local v0, "footer":Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getListItemParams(I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1407
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    aget-object v5, v5, p1

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1408
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    aget-object v5, v5, p1

    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getListViewParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1409
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mItemView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getActionButton(I)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 6

    .prologue
    .line 1154
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_HOME:I

    if-ne p1, v0, :cond_0

    .line 1155
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    .line 1156
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1157
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setSmallImage(Landroid/graphics/drawable/Drawable;)V

    .line 1159
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSize:I

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    invoke-static {v2, v1, v3, v4, v5}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->resize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 1164
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1166
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLabel(Ljava/lang/CharSequence;)V

    .line 1167
    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$10;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$10;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setAction(Ljava/lang/Runnable;)V

    .line 1276
    :goto_0
    return-object v0

    .line 1174
    :cond_0
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_BACK:I

    if-ne p1, v0, :cond_1

    .line 1175
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    .line 1176
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f020000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1177
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setSmallImage(Landroid/graphics/drawable/Drawable;)V

    .line 1179
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSize:I

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    invoke-static {v2, v1, v3, v4, v5}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->resize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 1184
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLabel(Ljava/lang/CharSequence;)V

    .line 1187
    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$11;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$11;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1194
    :cond_1
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_KILL_CURRENT:I

    if-ne p1, v0, :cond_2

    .line 1195
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    .line 1196
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1197
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setSmallImage(Landroid/graphics/drawable/Drawable;)V

    .line 1199
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSize:I

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    invoke-static {v2, v1, v3, v4, v5}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->resize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 1204
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLabel(Ljava/lang/CharSequence;)V

    .line 1207
    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$12;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$12;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setAction(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1214
    :cond_2
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_KILL_ALL:I

    if-ne p1, v0, :cond_3

    .line 1215
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    .line 1216
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1217
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setSmallImage(Landroid/graphics/drawable/Drawable;)V

    .line 1219
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSize:I

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    invoke-static {v2, v1, v3, v4, v5}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->resize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 1224
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1226
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLabel(Ljava/lang/CharSequence;)V

    .line 1227
    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$13;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$13;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setAction(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1234
    :cond_3
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_KILL_OTHER:I

    if-ne p1, v0, :cond_4

    .line 1235
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    .line 1236
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1237
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setSmallImage(Landroid/graphics/drawable/Drawable;)V

    .line 1239
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSize:I

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    invoke-static {v2, v1, v3, v4, v5}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->resize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 1244
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1246
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLabel(Ljava/lang/CharSequence;)V

    .line 1247
    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$14;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$14;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setAction(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1254
    :cond_4
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SPEED_SWITCH_IMMERSIVE_MODE:I

    if-ne p1, v0, :cond_5

    .line 1255
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    .line 1256
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1257
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setSmallImage(Landroid/graphics/drawable/Drawable;)V

    .line 1259
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mActionIconSize:I

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    invoke-static {v2, v1, v3, v4, v5}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->resize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 1264
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1266
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLabel(Ljava/lang/CharSequence;)V

    .line 1267
    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$15;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$15;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setAction(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1276
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getCurrentList(I)Ljava/util/List;
    .locals 1
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/ui/PackageTextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1377
    if-nez p1, :cond_0

    .line 1378
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mActionList:Ljava/util/List;

    .line 1386
    :goto_0
    return-object v0

    .line 1380
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1381
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    goto :goto_0

    .line 1383
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1384
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    goto :goto_0

    .line 1386
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDragHandleLayoutParamsSmall()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleWidth:I

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 375
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 376
    return-object v0
.end method

.method private getGravity()I
    .locals 3

    .prologue
    const/16 v0, 0x35

    .line 346
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 350
    const/16 v0, 0x33

    goto :goto_0
.end method

.method private getHorizontalGridIndex(I)I
    .locals 3
    .param p1, "rawX"    # I

    .prologue
    .line 1295
    const/4 v0, 0x1

    .line 1296
    .local v0, "width":I
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-nez v1, :cond_2

    .line 1297
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v0, v1, v2

    .line 1303
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mItemChangeWidthX:I

    if-le v0, v1, :cond_1

    .line 1304
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mItemChangeWidthX:I

    .line 1307
    :cond_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v1, :cond_4

    .line 1308
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/2addr v1, v0

    .line 1310
    :goto_1
    return v1

    .line 1298
    :cond_2
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1299
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v0, v1, v2

    goto :goto_0

    .line 1300
    :cond_3
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1301
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mActionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v0, v1, v2

    goto :goto_0

    .line 1310
    :cond_4
    div-int v1, p1, v0

    goto :goto_1
.end method

.method private getItemViewHeight()I
    .locals 2

    .prologue
    .line 396
    const/high16 v0, 0x43960000    # 300.0f

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getItemViewTopMargin()I
    .locals 3

    .prologue
    .line 392
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mThumbnailHeight:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getLevelChangeBorderView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1461
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1462
    .local v0, "border":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelChangeWidthX:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1465
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v2, :cond_0

    .line 1466
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelChangeWidthX:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1470
    :goto_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1471
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1472
    return-object v0

    .line 1468
    :cond_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelChangeWidthX:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private getLevelStripeBorderView(I)Landroid/view/View;
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/4 v4, 0x1

    .line 1437
    const/4 v2, 0x0

    .line 1438
    .local v2, "top":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 1439
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 1451
    :goto_0
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1452
    .local v0, "border":Landroid/view/View;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelHeight:I

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1455
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1456
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1457
    .end local v0    # "border":Landroid/view/View;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 1440
    :cond_0
    if-nez p1, :cond_1

    .line 1441
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    aget v2, v3, v4

    goto :goto_0

    .line 1442
    :cond_1
    if-ne p1, v4, :cond_3

    .line 1443
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1444
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    const/4 v4, 0x2

    aget v2, v3, v4

    goto :goto_0

    .line 1446
    :cond_2
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVerticalBorders:[I

    aget v2, v3, v4

    goto :goto_0

    .line 1449
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getListItemParams(I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1332
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getListItemWidth(I)I

    move-result v1

    .line 1333
    .local v1, "width":I
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1336
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    return-object v0
.end method

.method private getListItemWidth(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 1325
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowTumb:Z

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mThumbnailWidth:I

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    add-int/2addr v0, v1

    .line 1328
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOverlayWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method private getListViewParams(I)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1315
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowTumb:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mThumbnailWidth:I

    mul-int/lit8 v1, v2, 0x3

    .line 1316
    .local v1, "width":I
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1320
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1321
    return-object v0

    .line 1315
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "width":I
    :cond_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOverlayWidth()I

    move-result v1

    goto :goto_0
.end method

.method private getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 676
    new-instance v0, Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;-><init>(Landroid/content/Context;)V

    .line 677
    .local v0, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTextColor(I)V

    .line 678
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v4, v4, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setShadowLayer(FFFI)V

    .line 679
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTextSize(F)V

    .line 680
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 681
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 682
    invoke-virtual {v0, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGravity(I)V

    .line 683
    invoke-virtual {v0, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setMaxLines(I)V

    .line 684
    return-object v0
.end method

.method private hideAllBorders()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1518
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowIndicators:Z

    if-nez v0, :cond_1

    .line 1529
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1522
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1523
    iput-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelChangeIndicator:Landroid/view/View;

    .line 1525
    :cond_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1527
    iput-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelBorderIndicator:Landroid/view/View;

    goto :goto_0
.end method

.method private hideAllLists()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1340
    const/4 v1, 0x0

    .line 1341
    .local v1, "oldList":Landroid/widget/HorizontalScrollView;
    iget v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1342
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    iget v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v3

    aget-object v1, v2, v3

    .line 1345
    :cond_0
    move-object v0, v1

    .line 1346
    .local v0, "finalOldList":Landroid/widget/HorizontalScrollView;
    if-eqz v0, :cond_1

    .line 1347
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/omnirom/omniswitch/ui/SwitchGestureView$16;

    invoke-direct {v3, p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$16;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1361
    :goto_0
    return-void

    .line 1357
    :cond_1
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1358
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1359
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initAlpha()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1425
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setAlpha(F)V

    .line 1428
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    .line 1429
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    aget-object v0, v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setAlpha(F)V

    .line 1431
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    .line 1432
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setAlpha(F)V

    .line 1434
    :cond_2
    return-void
.end method

.method private interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "ti"    # Landroid/animation/TimeInterpolator;
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 580
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 581
    return-object p2
.end method

.method private isValidCoordinate(II)Z
    .locals 7
    .param p1, "xPos"    # I
    .param p2, "yPos"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1005
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    .line 1006
    .local v0, "location":I
    new-instance v1, Landroid/graphics/Rect;

    if-ne v0, v6, :cond_1

    move v2, v3

    :goto_0
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v5}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v5

    if-ne v0, v6, :cond_0

    const/16 v3, 0x14

    :cond_0
    sub-int v3, v5, v3

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v5}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x14

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1007
    .local v1, "r":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2

    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_1
    move v2, v4

    .line 1006
    goto :goto_0
.end method

.method private layoutAction(Lorg/omnirom/omniswitch/ui/PackageTextView;)V
    .locals 3
    .param p1, "item"    # Lorg/omnirom/omniswitch/ui/PackageTextView;

    .prologue
    const/4 v2, 0x0

    .line 1283
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 1284
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateCurrentItemEnv()V

    .line 1285
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutEnvItems()V

    .line 1287
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getOriginalImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v2, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1292
    return-void
.end method

.method private layoutEnvItems()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1060
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 1061
    .local v0, "left":Lorg/omnirom/omniswitch/ui/PackageTextView;
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 1063
    .local v1, "right":Lorg/omnirom/omniswitch/ui/PackageTextView;
    if-eqz v0, :cond_0

    .line 1064
    const-string v2, ""

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowTumb:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1066
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->loadTaskThumb(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    .line 1071
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 1072
    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowTumb:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1074
    invoke-direct {p0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->loadTaskThumb(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    .line 1079
    :cond_1
    :goto_1
    return-void

    .line 1068
    :cond_2
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getOriginalImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v4, v2, v4, v4}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1076
    :cond_3
    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getOriginalImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v4, v4}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private layoutFavorite(Lorg/omnirom/omniswitch/ui/PackageTextView;)V
    .locals 3
    .param p1, "item"    # Lorg/omnirom/omniswitch/ui/PackageTextView;

    .prologue
    const/4 v2, 0x0

    .line 813
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 814
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateCurrentItemEnv()V

    .line 815
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutEnvItems()V

    .line 817
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getOriginalImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v2, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 818
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowLabels:Z

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    :cond_0
    return-void
.end method

.method private layoutTask(Lorg/omnirom/omniswitch/ui/PackageTextView;)V
    .locals 3
    .param p1, "item"    # Lorg/omnirom/omniswitch/ui/PackageTextView;

    .prologue
    const/4 v2, 0x0

    .line 772
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 773
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateCurrentItemEnv()V

    .line 774
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutEnvItems()V

    .line 776
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowTumb:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 777
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->loadTaskThumb(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    .line 781
    :goto_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowLabels:Z

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    :cond_0
    return-void

    .line 779
    :cond_1
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getOriginalImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v2, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private levelToListLevel(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1364
    if-ne p1, v1, :cond_1

    .line 1365
    const/4 v0, 0x0

    .line 1373
    :cond_0
    :goto_0
    return v0

    .line 1367
    :cond_1
    if-eqz p1, :cond_0

    .line 1370
    if-ne p1, v0, :cond_2

    .line 1371
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1373
    goto :goto_0
.end method

.method private declared-synchronized loadRecentItems()V
    .locals 11

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mSpeedSwitcher:Z

    if-nez v0, :cond_1

    .line 689
    const-string v0, "SwitchGestureView"

    const-string v1, "loadRecentItems: called with !mSpeedSwitcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 766
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 692
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPress:Z

    if-nez v0, :cond_2

    .line 693
    const-string v0, "SwitchGestureView"

    const-string v1, "loadRecentItems: called with !mLongPress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 688
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 699
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAutoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 700
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 701
    const/4 v8, 0x0

    .line 702
    .local v8, "i":I
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 703
    .local v10, "nextTask":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/omnirom/omniswitch/TaskDescription;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLimitItemsX:I

    if-ge v8, v0, :cond_3

    .line 704
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/omnirom/omniswitch/TaskDescription;

    .line 705
    .local v2, "ad":Lorg/omnirom/omniswitch/TaskDescription;
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getPackageItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v9

    .line 706
    .local v9, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    const/4 v0, 0x1

    invoke-virtual {v9, v2, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTask(Lorg/omnirom/omniswitch/TaskDescription;Z)V

    .line 707
    invoke-virtual {v2}, Lorg/omnirom/omniswitch/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLabel(Ljava/lang/CharSequence;)V

    .line 708
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    const/16 v5, 0x64

    invoke-virtual/range {v0 .. v5}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/TaskDescription;Landroid/graphics/drawable/Drawable;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 709
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9, v7}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 710
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    const/16 v5, 0x3c

    invoke-virtual/range {v0 .. v5}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/TaskDescription;Landroid/graphics/drawable/Drawable;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 711
    invoke-virtual {v9, v7}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setSmallImage(Landroid/graphics/drawable/Drawable;)V

    .line 712
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    add-int/lit8 v8, v8, 0x1

    .line 714
    goto :goto_1

    .line 715
    .end local v2    # "ad":Lorg/omnirom/omniswitch/TaskDescription;
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .end local v9    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentRecentItemIndex:I

    .line 716
    const/4 v0, 0x0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentFavoriteItemIndex:I

    .line 717
    const/4 v0, 0x0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentActionItemIndex:I

    .line 718
    const/4 v0, -0x1

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I

    .line 719
    const/4 v0, -0x2

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    .line 720
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLockedLevel:I

    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVirtualBackKey:Z

    .line 722
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowingSpeedSwitcher:Z

    .line 724
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->resetEnvItems()V

    .line 725
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->calcVerticalBorders()V

    .line 727
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->fillList(I)V

    .line 728
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->fillList(I)V

    .line 729
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->fillList(I)V

    .line 731
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 732
    :cond_4
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 733
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getParamsFull()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mItemView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getItemViewParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    :cond_5
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 738
    const/4 v0, 0x0

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    .line 739
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLockedLevel:I

    .line 740
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->setViewBackground()V

    .line 741
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentRecentItemIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 742
    .restart local v9    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-direct {p0, v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutTask(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    .line 751
    .end local v9    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    :cond_6
    :goto_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 752
    :cond_7
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->initAlpha()V

    .line 753
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v1

    aget-object v6, v0, v1

    .line 754
    .local v6, "actualView":Landroid/widget/HorizontalScrollView;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 755
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 757
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;

    invoke-direct {v1, p0, v6}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Landroid/widget/HorizontalScrollView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 743
    .end local v6    # "actualView":Landroid/widget/HorizontalScrollView;
    :cond_8
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 744
    const/4 v0, 0x1

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    .line 745
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLockedLevel:I

    .line 746
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->setViewBackground()V

    .line 747
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentFavoriteItemIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 748
    .restart local v9    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-direct {p0, v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutFavorite(Lorg/omnirom/omniswitch/ui/PackageTextView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private loadTaskThumb(Lorg/omnirom/omniswitch/ui/PackageTextView;)V
    .locals 2
    .param p1, "item"    # Lorg/omnirom/omniswitch/ui/PackageTextView;

    .prologue
    .line 1130
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/RecentTasksLoader;

    move-result-object v0

    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/RecentTasksLoader;->loadThumbnail(Lorg/omnirom/omniswitch/TaskDescription;)V

    .line 1133
    :cond_0
    return-void
.end method

.method private resetEnvItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1082
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1083
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 1084
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 1085
    return-void
.end method

.method private declared-synchronized resetView()V
    .locals 4

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowingSpeedSwitcher:Z

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 639
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mItemView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 640
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 641
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->resetEnvItems()V

    .line 642
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->clearViewBackground()V

    .line 644
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 645
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getDragHandleLayoutParamsSmall()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getParamsSmall()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 647
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->toggleDragHandle(Z)V

    .line 650
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAutoHide:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAutoHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 655
    :cond_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVirtualBackKey:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    if-nez v0, :cond_1

    .line 656
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/Utils;->triggerVirtualKeypress(Landroid/os/Handler;I)V

    .line 659
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowingSpeedSwitcher:Z

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandleRecentsUpdate:Z

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    monitor-exit p0

    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private roundIndex(Ljava/util/List;I)I
    .locals 1
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/ui/PackageTextView;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1011
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/ui/PackageTextView;>;"
    if-gez p2, :cond_1

    .line 1012
    const/4 p2, 0x0

    .line 1016
    :cond_0
    :goto_0
    return p2

    .line 1013
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_0

    .line 1014
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p2, v0, -0x1

    goto :goto_0
.end method

.method private setViewBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 824
    const/4 v0, 0x0

    .line 825
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLevelBackgroundColor:Z

    if-eqz v1, :cond_4

    .line 826
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-nez v1, :cond_2

    .line 827
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 828
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 840
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 841
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mItemView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 843
    :cond_1
    return-void

    .line 829
    :cond_2
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 830
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    .line 831
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    .line 832
    :cond_3
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 833
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    .line 834
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    .line 837
    :cond_4
    new-array v1, v3, [I

    fill-array-data v1, :array_3

    .line 838
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    goto :goto_0

    .line 827
    nop

    :array_0
    .array-data 4
        0x0
        -0x3fcc4a1b
        0x0
    .end array-data

    .line 830
    :array_1
    .array-data 4
        0x0
        -0x3f5b38c7
        0x0
    .end array-data

    .line 833
    :array_2
    .array-data 4
        0x0
        -0x3f010000    # -7.96875f
        0x0
    .end array-data

    .line 837
    :array_3
    .array-data 4
        0x0
        -0x40000000    # -2.0f
        0x0
    .end array-data
.end method

.method private start(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 576
    return-object p1
.end method

.method private startShowcaseDragHandle()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 520
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showcase_handle_done"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 521
    new-instance v6, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    invoke-direct {v6}, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;-><init>()V

    .line 522
    .local v6, "co":Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;
    iput-boolean v8, v6, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->hideOnClickOutside:Z

    .line 524
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 525
    .local v7, "size":Landroid/graphics/Point;
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 527
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-ne v0, v8, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetStart()I

    move-result v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetEnd()I

    move-result v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetStart()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    const v4, 0x7f09000b

    const v5, 0x7f09000c

    invoke-static/range {v0 .. v6}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->insertShowcaseView(FFLandroid/view/WindowManager;Landroid/content/Context;IILorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;)Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseView:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    .line 531
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseView:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    invoke-virtual {v0, p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setOnShowcaseEventListener(Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;)V

    .line 532
    iput-boolean v8, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseHandleDone:Z

    .line 533
    return-void

    .line 527
    :cond_0
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private startShowcaseQuickSwitcher()V
    .locals 9

    .prologue
    const v4, 0x7f090055

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 536
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "showcase_quick_done"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 537
    new-instance v6, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    invoke-direct {v6}, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;-><init>()V

    .line 538
    .local v6, "co":Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;
    iput-boolean v8, v6, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->hideOnClickOutside:Z

    .line 540
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 541
    .local v7, "size":Landroid/graphics/Point;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 543
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 544
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-ne v1, v8, :cond_0

    :goto_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetStart()I

    move-result v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetEnd()I

    move-result v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetStart()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    const v5, 0x7f090057

    invoke-static/range {v0 .. v6}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->insertShowcaseView(FFLandroid/view/WindowManager;Landroid/content/Context;IILorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;)Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseView:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    .line 552
    :goto_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseView:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    invoke-virtual {v0, p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setOnShowcaseEventListener(Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;)V

    .line 553
    iput-boolean v8, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseQuickDone:Z

    .line 554
    return-void

    .line 544
    :cond_0
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    goto :goto_0

    .line 548
    :cond_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-ne v1, v8, :cond_2

    :goto_2
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getItemViewTopMargin()I

    move-result v1

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getItemViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    const v5, 0x7f090056

    invoke-static/range {v0 .. v6}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->insertShowcaseView(FFLandroid/view/WindowManager;Landroid/content/Context;IILorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;)Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseView:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    goto :goto_1

    :cond_2
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    goto :goto_2
.end method

.method private switchItem()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1088
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-ne v4, v6, :cond_1

    .line 1089
    :cond_0
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getCurrentList(I)Ljava/util/List;

    move-result-object v1

    .line 1090
    .local v1, "currentList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/ui/PackageTextView;>;"
    if-nez v1, :cond_2

    .line 1124
    .end local v1    # "currentList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/ui/PackageTextView;>;"
    :cond_1
    :goto_0
    return-void

    .line 1093
    .restart local v1    # "currentList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/ui/PackageTextView;>;"
    :cond_2
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I

    invoke-direct {p0, v1, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->roundIndex(Ljava/util/List;I)I

    move-result v2

    .line 1097
    .local v2, "idx":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1098
    .local v3, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;

    iget v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v5}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v5

    aget-object v0, v4, v5

    .line 1100
    .local v0, "actualView":Landroid/widget/HorizontalScrollView;
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-nez v4, :cond_4

    .line 1101
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1102
    iput v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentRecentItemIndex:I

    .line 1103
    invoke-direct {p0, v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutTask(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    .line 1116
    :cond_3
    :goto_1
    if-eqz v3, :cond_1

    .line 1117
    if-eq v2, v6, :cond_1

    .line 1118
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getListItemWidth(I)I

    move-result v4

    mul-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1119
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->initAlpha()V

    goto :goto_0

    .line 1105
    :cond_4
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-ne v4, v7, :cond_5

    .line 1106
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mFavoriteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1107
    iput v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentFavoriteItemIndex:I

    .line 1108
    invoke-direct {p0, v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutFavorite(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    goto :goto_1

    .line 1110
    :cond_5
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-ne v4, v6, :cond_3

    .line 1111
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mActionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1112
    iput v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentActionItemIndex:I

    .line 1113
    invoke-direct {p0, v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->layoutAction(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    goto :goto_1
.end method

.method private toggleDragHandle(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mToggleDragHandleAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mToggleDragHandleAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 595
    :goto_0
    if-eqz p1, :cond_2

    .line 596
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 597
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mToggleDragHandleAnim:Landroid/animation/Animator;

    .line 608
    :goto_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mToggleDragHandleAnim:Landroid/animation/Animator;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$6;

    invoke-direct {v1, p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$6;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 626
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    goto :goto_0

    .line 602
    :cond_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 603
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mToggleDragHandleAnim:Landroid/animation/Animator;

    goto :goto_1

    .line 598
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 603
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAutoHide:Z

    if-eqz v0, :cond_0

    .line 410
    invoke-direct {p0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateDragHandleImage(Z)V

    .line 415
    :goto_0
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateDragHandleImage(Z)V

    .line 413
    iput-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHidden:Z

    goto :goto_0
.end method

.method private updateCurrentItemEnv()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 1020
    const/4 v1, 0x0

    .line 1021
    .local v1, "idx":I
    const/4 v2, 0x0

    .line 1022
    .local v2, "leftIdx":I
    const/4 v3, 0x0

    .line 1024
    .local v3, "rightIdx":I
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    if-nez v4, :cond_1

    .line 1025
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentRecentItemIndex:I

    .line 1032
    :cond_0
    :goto_0
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I

    move-result v4

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getCurrentList(I)Ljava/util/List;

    move-result-object v0

    .line 1033
    .local v0, "currentList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/ui/PackageTextView;>;"
    if-nez v0, :cond_3

    .line 1057
    :goto_1
    return-void

    .line 1026
    .end local v0    # "currentList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/ui/PackageTextView;>;"
    :cond_1
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1027
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentFavoriteItemIndex:I

    goto :goto_0

    .line 1028
    :cond_2
    iget v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1029
    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentActionItemIndex:I

    goto :goto_0

    .line 1037
    .restart local v0    # "currentList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/ui/PackageTextView;>;"
    :cond_3
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v4, :cond_4

    .line 1038
    add-int/lit8 v2, v1, 0x1

    .line 1039
    add-int/lit8 v3, v1, -0x1

    .line 1044
    :goto_2
    invoke-direct {p0, v0, v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->roundIndex(Ljava/util/List;I)I

    move-result v2

    .line 1045
    invoke-direct {p0, v0, v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->roundIndex(Ljava/util/List;I)I

    move-result v3

    .line 1047
    if-eq v2, v1, :cond_5

    .line 1048
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/omnirom/omniswitch/ui/PackageTextView;

    aput-object v4, v5, v6

    .line 1052
    :goto_3
    if-eq v3, v1, :cond_6

    .line 1053
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/omnirom/omniswitch/ui/PackageTextView;

    aput-object v4, v5, v7

    goto :goto_1

    .line 1041
    :cond_4
    add-int/lit8 v2, v1, -0x1

    .line 1042
    add-int/lit8 v3, v1, 0x1

    goto :goto_2

    .line 1050
    :cond_5
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    aput-object v8, v4, v6

    goto :goto_3

    .line 1055
    :cond_6
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;

    aput-object v8, v4, v7

    goto :goto_1
.end method

.method private updateDragHandleImage(Z)V
    .locals 3
    .param p1, "shown"    # Z

    .prologue
    const/4 v1, 0x1

    .line 418
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragHandleImage:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    .line 420
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAutoHide:Z

    if-eqz v0, :cond_3

    .line 421
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHidden:Z

    .line 422
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHidden:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragHandleHiddenImage:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    .line 431
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-ne v0, v1, :cond_1

    .line 432
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->rotate(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleColor:I

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    .line 435
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleOpacity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 437
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->toggleDragHandle(Z)V

    .line 438
    return-void

    .line 421
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :cond_3
    if-nez p1, :cond_0

    .line 427
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragHandleHiddenImage:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method


# virtual methods
.method public getItemViewParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 400
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v1

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getItemViewHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 403
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 404
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getItemViewTopMargin()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 405
    return-object v0
.end method

.method public getParamsFull()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 380
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v2

    const/16 v3, 0x7d2

    const/4 v4, 0x2

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 386
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 387
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBackgroundOpacity:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 388
    return-object v0
.end method

.method public getParamsSmall()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 357
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleWidth:I

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleHeight:I

    const/16 v3, 0x7d2

    const v4, 0x40028

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 366
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 367
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetStart()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 368
    return-object v0
.end method

.method public declared-synchronized hide()V
    .locals 2

    .prologue
    .line 485
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 495
    :goto_0
    monitor-exit p0

    return-void

    .line 492
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowing:Z

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isHandleRecentsUpdate()Z
    .locals 1

    .prologue
    .line 997
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mSpeedSwitcher:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandleRecentsUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowing:Z

    return v0
.end method

.method public onShowcaseViewHide(Lorg/omnirom/omniswitch/showcase/ShowcaseView;)V
    .locals 0
    .param p1, "showcaseView"    # Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    .prologue
    .line 558
    return-void
.end method

.method public overlayHidden()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 511
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAutoHide:Z

    if-eqz v0, :cond_0

    .line 512
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateDragHandleImage(Z)V

    .line 516
    :goto_0
    iput-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z

    .line 517
    return-void

    .line 514
    :cond_0
    invoke-direct {p0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateDragHandleImage(Z)V

    goto :goto_0
.end method

.method public overlayShown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 501
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 502
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAutoHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 503
    invoke-direct {p0, v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateDragHandleImage(Z)V

    .line 504
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z

    .line 505
    return-void
.end method

.method public setRecentsManager(Lorg/omnirom/omniswitch/SwitchManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/omnirom/omniswitch/SwitchManager;

    .prologue
    .line 629
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;

    .line 630
    return-void
.end method

.method public declared-synchronized show()V
    .locals 3

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 482
    :goto_0
    monitor-exit p0

    return-void

    .line 471
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getDragHandleLayoutParamsSmall()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getParamsSmall()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseHandleDone:Z

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$5;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$5;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 480
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowing:Z

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/TaskDescription;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->isHandleRecentsUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 670
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 671
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->loadRecentItems()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :cond_0
    monitor-exit p0

    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLayout()V
    .locals 3

    .prologue
    .line 569
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowing:Z

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getParamsSmall()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    :cond_0
    return-void
.end method

.method public updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 444
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateButton()V

    .line 446
    const-string v2, "speed_switcher"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mSpeedSwitcher:Z

    .line 447
    const-string v2, "favorite_apps"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "favoriteListString":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v0, "favoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v0}, Lorg/omnirom/omniswitch/Utils;->parseFavorites(Ljava/lang/String;Ljava/util/List;)V

    .line 450
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->buildFavoriteItems(Ljava/util/List;)V

    .line 451
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->buildActionList()V

    .line 452
    const-string v2, "showcase_quick_done"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseQuickDone:Z

    .line 453
    const-string v2, "showcase_handle_done"

    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseHandleDone:Z

    .line 455
    if-eqz p2, :cond_0

    const-string v2, "drag_handle_enable"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    :cond_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleShow:Z

    if-eqz v2, :cond_2

    .line 457
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->show()V

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 459
    :cond_2
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->hide()V

    goto :goto_0
.end method
