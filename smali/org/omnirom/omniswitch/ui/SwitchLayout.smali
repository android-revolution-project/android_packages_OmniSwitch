.class public Lorg/omnirom/omniswitch/ui/SwitchLayout;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;,
        Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;,
        Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;,
        Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;
    }
.end annotation


# instance fields
.field private mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

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

.field private mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

.field private mAppDrawer:Landroid/widget/GridView;

.field private mAppDrawerAnim:Landroid/animation/Animator;

.field private mAppDrawerListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;

.field private mAutoClose:Z

.field private mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

.field private mBackgroundProcessText:Landroid/widget/TextView;

.field private mButtonList:Lorg/omnirom/omniswitch/ui/ButtonScrollView;

.field private mButtonListContainer:Landroid/widget/LinearLayout;

.field private mButtonListItems:Landroid/widget/LinearLayout;

.field private mButtonsVisible:Z

.field private mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

.field private mContext:Landroid/content/Context;

.field private mCurrentSelection:Landroid/view/View;

.field private mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

.field private mFavoriteDrawableGlow:[Landroid/graphics/drawable/Drawable;

.field private mFavoriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;

.field private mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

.field private mForegroundProcessText:Landroid/widget/TextView;

.field private mHandleRecentsUpdate:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasFavorites:Z

.field private mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

.field private mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

.field private mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

.field private mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

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

.field private mNoRecentApps:Landroid/widget/TextView;

.field private mOpenFavorite:Landroid/widget/ImageButton;

.field private mOpenFavoriteY:F

.field private mPendingGlowSelector:Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mPopupView:Landroid/widget/FrameLayout;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRamUsageBar:Lorg/omnirom/omniswitch/ui/LinearColorBar;

.field private mRamUsageBarContainer:Landroid/widget/LinearLayout;

.field private mRecentListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

.field private mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

.field private mRecents:Landroid/widget/LinearLayout;

.field private mRecentsAnim:Landroid/animation/Animator;

.field private mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;

.field private mSelectionGlowListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

.field private mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

.field private mShowAppDrawer:Z

.field private mShowFavAnim:Landroid/animation/Animator;

.field private mShowFavorites:Z

.field private mShowcaseDone:Z

.field private mShowcaseView:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

.field private mShowing:Z

.field private mTaskLoadDone:Z

.field private mToggleOverlayAnim:Landroid/animation/Animator;

.field private mUpdateNoRecentsTasksDone:Z

.field private mView:Landroid/view/View;

.field private mVirtualBackKey:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private final updateRamBarTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const v3, 0x109000f

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHandler:Landroid/os/Handler;

    .line 129
    iput-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonsVisible:Z

    .line 130
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    .line 131
    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableGlow:[Landroid/graphics/drawable/Drawable;

    .line 132
    iput-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAutoClose:Z

    .line 142
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 143
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 145
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 256
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSelectionGlowListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    .line 986
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$23;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->updateRamBarTask:Ljava/lang/Runnable;

    .line 293
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    .line 294
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mWindowManager:Landroid/view/WindowManager;

    .line 296
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPrefs:Landroid/content/SharedPreferences;

    .line 297
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    .line 299
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;

    .line 302
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;

    invoke-direct {v0, p0, v1, v3, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    .line 306
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v3, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;

    .line 309
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/PackageManager;->getPackageList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v3, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;

    .line 313
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "show_favorite"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mActionList:Ljava/util/List;

    .line 315
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getRecentItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAutoClose:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchManager;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/TaskDescription;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;
    .param p1, "x1"    # Lorg/omnirom/omniswitch/TaskDescription;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->handleLongPressRecent(Lorg/omnirom/omniswitch/TaskDescription;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/widget/ImageButton;IZ)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;
    .param p1, "x1"    # Landroid/widget/ImageButton;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->setButtonGlow(Landroid/widget/ImageButton;IZ)V

    return-void
.end method

.method static synthetic access$1700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->toggleFavorites()V

    return-void
.end method

.method static synthetic access$1800(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;
    .param p1, "x1"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->handleLongPressFavorite(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;
    .param p1, "x1"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->handleLongPressAppDrawer(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowing:Z

    return v0
.end method

.method static synthetic access$2102(Lorg/omnirom/omniswitch/ui/SwitchLayout;F)F
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;
    .param p1, "x1"    # F

    .prologue
    .line 81
    iput p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavoriteY:F

    return p1
.end method

.method static synthetic access$2200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->startShowcaseFavorite()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;
    .param p1, "x1"    # Landroid/widget/PopupMenu;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/LinearColorBar;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRamUsageBar:Lorg/omnirom/omniswitch/ui/LinearColorBar;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mForegroundProcessText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackgroundProcessText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->hideDone()V

    return-void
.end method

.method static synthetic access$2800(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->showDone()V

    return-void
.end method

.method static synthetic access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->toggleAppdrawer()V

    return-void
.end method

.method static synthetic access$3700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    return-object v0
.end method

.method static synthetic access$3802(Lorg/omnirom/omniswitch/ui/SwitchLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mVirtualBackKey:Z

    return p1
.end method

.method static synthetic access$3900(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getFavoriteItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getAppDrawerItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSelectionGlowListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    return-object v0
.end method

.method static synthetic access$800(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPendingGlowSelector:Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;

    return-object v0
.end method

.method static synthetic access$902(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;)Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwitchLayout;
    .param p1, "x1"    # Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPendingGlowSelector:Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;

    return-object p1
.end method

.method private buildButtonList()V
    .locals 5

    .prologue
    .line 1679
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mActionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1680
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-object v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mButtons:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1681
    .local v2, "nextKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1682
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1683
    .local v1, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-object v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mButtons:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1684
    .local v3, "value":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1685
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getActionButton(I)Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    .line 1686
    .local v0, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    if-eqz v0, :cond_0

    .line 1687
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mActionList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1691
    .end local v0    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v3    # "value":Ljava/lang/Boolean;
    :cond_1
    return-void
.end method

.method private buildButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 1694
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonListItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1695
    const/high16 v0, 0x40a00000    # 5.0f

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1696
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1697
    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1698
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1699
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1700
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1701
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonListItems:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1703
    :cond_0
    return-void
.end method

.method private declared-synchronized createView()V
    .locals 5

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    .line 320
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f080024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecents:Landroid/widget/LinearLayout;

    .line 322
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .line 324
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    .line 327
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f080022

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/ButtonScrollView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonList:Lorg/omnirom/omniswitch/ui/ButtonScrollView;

    .line 328
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonList:Lorg/omnirom/omniswitch/ui/ButtonScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/ButtonScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 329
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f080023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonListItems:Landroid/widget/LinearLayout;

    .line 330
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f080021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonListContainer:Landroid/widget/LinearLayout;

    .line 331
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSelectionGlowListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setSelectionListener(Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;)V

    .line 333
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$2;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$2;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 343
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$3;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$3;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 354
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$4;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$4;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-direct {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;-><init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;)V

    .line 375
    .local v0, "touchListener":Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v1, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setSwipeListener(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)V

    .line 376
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;

    .line 381
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$5;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$5;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .line 397
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSelectionGlowListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setSelectionListener(Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;)V

    .line 399
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$6;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$6;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 408
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 410
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$7;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$7;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 423
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$8;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$8;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 430
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRamUsageBarContainer:Landroid/widget/LinearLayout;

    .line 431
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/LinearColorBar;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRamUsageBar:Lorg/omnirom/omniswitch/ui/LinearColorBar;

    .line 432
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mForegroundProcessText:Landroid/widget/TextView;

    .line 434
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 437
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    .line 438
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$9;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$9;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 445
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$10;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$10;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 456
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$11;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$11;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 470
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$12;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$12;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 483
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    .line 484
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 486
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$13;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$13;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 501
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$14;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$14;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    .line 318
    .end local v0    # "touchListener":Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private flipToAppDrawer()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1150
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1153
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1156
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1157
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setScaleX(F)V

    .line 1158
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1160
    const/16 v0, 0x7d

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerAnim:Landroid/animation/Animator;

    .line 1165
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecents:Landroid/widget/LinearLayout;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v8, [F

    aput v6, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecents:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsAnim:Landroid/animation/Animator;

    .line 1169
    return-void
.end method

.method private flipToRecents()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1172
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1175
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1178
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1179
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecents:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1180
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setScaleX(F)V

    .line 1182
    const/16 v0, 0x7d

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecents:Landroid/widget/LinearLayout;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsAnim:Landroid/animation/Animator;

    .line 1187
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v8, [F

    aput v6, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerAnim:Landroid/animation/Animator;

    .line 1191
    return-void
.end method

.method private getActionButton(I)Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 9

    .prologue
    const v8, 0x7f020011

    const v7, 0x7f020010

    const v6, 0x7f02000b

    const v5, 0x7f02000a

    const/high16 v4, 0x7f020000

    .line 1340
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_HOME:I

    if-ne p1, v0, :cond_1

    .line 1341
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getPackageItemActionTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1342
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1348
    :goto_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGlowImage(Landroid/graphics/drawable/Drawable;)V

    .line 1351
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$27;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$27;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1364
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$28;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$28;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1369
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$29;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$29;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1377
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1675
    :goto_1
    return-object v0

    .line 1346
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHomeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1380
    :cond_1
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_TOGGLE_APP:I

    if-ne p1, v0, :cond_3

    .line 1381
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getPackageItemActionTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1382
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v0, :cond_2

    .line 1384
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1388
    :goto_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGlowImage(Landroid/graphics/drawable/Drawable;)V

    .line 1391
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$30;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$30;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1405
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$31;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$31;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1410
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$32;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$32;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1418
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto :goto_1

    .line 1386
    :cond_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLastAppButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1421
    :cond_3
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_KILL_ALL:I

    if-ne p1, v0, :cond_5

    .line 1422
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getPackageItemActionTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1423
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v0, :cond_4

    .line 1425
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1429
    :goto_3
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGlowImage(Landroid/graphics/drawable/Drawable;)V

    .line 1432
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$33;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$33;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1445
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$34;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$34;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$35;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$35;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1458
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto/16 :goto_1

    .line 1427
    :cond_4
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillAllButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1461
    :cond_5
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_KILL_OTHER:I

    if-ne p1, v0, :cond_7

    .line 1462
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getPackageItemActionTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1463
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v0, :cond_6

    .line 1465
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1469
    :goto_4
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGlowImage(Landroid/graphics/drawable/Drawable;)V

    .line 1472
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$36;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$36;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1486
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$37;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$37;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1491
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$38;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$38;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1499
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto/16 :goto_1

    .line 1467
    :cond_6
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mKillOtherButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1502
    :cond_7
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_SETTINGS:I

    if-ne p1, v0, :cond_9

    .line 1503
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getPackageItemActionTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1504
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v0, :cond_8

    .line 1506
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1510
    :goto_5
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGlowImage(Landroid/graphics/drawable/Drawable;)V

    .line 1514
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$39;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$39;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1528
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$40;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$40;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1533
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$41;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$41;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1540
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto/16 :goto_1

    .line 1508
    :cond_8
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSettingsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1543
    :cond_9
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_ALLAPPS:I

    if-ne p1, v0, :cond_b

    .line 1544
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getPackageItemActionTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1545
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v0, :cond_a

    .line 1547
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1551
    :goto_6
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGlowImage(Landroid/graphics/drawable/Drawable;)V

    .line 1555
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$42;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$42;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1569
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$43;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$43;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1574
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$44;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$44;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1582
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto/16 :goto_1

    .line 1549
    :cond_a
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAllappsButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 1585
    :cond_b
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_BACK:I

    if-ne p1, v0, :cond_d

    .line 1586
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getPackageItemActionTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1587
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v0, :cond_c

    .line 1589
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1593
    :goto_7
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGlowImage(Landroid/graphics/drawable/Drawable;)V

    .line 1597
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$45;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$45;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1611
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$46;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$46;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1617
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$47;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$47;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1625
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto/16 :goto_1

    .line 1591
    :cond_c
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1628
    :cond_d
    sget v0, Lorg/omnirom/omniswitch/SettingsActivity;->BUTTON_IMMERSIVE_MODE:I

    if-ne p1, v0, :cond_f

    .line 1629
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getPackageItemActionTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1630
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v0, :cond_e

    .line 1632
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 1636
    :goto_8
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGlowImage(Landroid/graphics/drawable/Drawable;)V

    .line 1640
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$48;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$48;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1654
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$49;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$49;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1664
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$50;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$50;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1673
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto/16 :goto_1

    .line 1634
    :cond_e
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mImmersiveModeButton:Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 1675
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private getAppDrawerItemParams()Landroid/widget/AbsListView$LayoutParams;
    .locals 3

    .prologue
    .line 766
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxWidth:I

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getAppDrawerItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 1128
    new-instance v0, Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;-><init>(Landroid/content/Context;)V

    .line 1129
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v1, :cond_0

    .line 1130
    invoke-virtual {v0, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTextColor(I)V

    .line 1131
    invoke-virtual {v0, v2, v2, v2, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setShadowLayer(FFFI)V

    .line 1136
    :goto_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1137
    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGravity(I)V

    .line 1138
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getAppDrawerItemParams()Landroid/widget/AbsListView$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setMaxLines(I)V

    .line 1140
    return-object v0

    .line 1133
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTextColor(I)V

    .line 1134
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2, v2, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method private getAppDrawerLines()I
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconSize:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 774
    const/4 v0, 0x5

    .line 779
    :goto_0
    return v0

    .line 776
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconSize:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 777
    const/4 v0, 0x4

    goto :goto_0

    .line 779
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getAppDrawerParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .prologue
    .line 783
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getAppDrawerLines()I

    move-result v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxHeight:I

    mul-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getFavoriteItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 1112
    new-instance v0, Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;-><init>(Landroid/content/Context;)V

    .line 1113
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v1, :cond_0

    .line 1114
    invoke-virtual {v0, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTextColor(I)V

    .line 1115
    invoke-virtual {v0, v2, v2, v2, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setShadowLayer(FFFI)V

    .line 1120
    :goto_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1121
    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGravity(I)V

    .line 1122
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getListItemParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setMaxLines(I)V

    .line 1124
    return-object v0

    .line 1117
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTextColor(I)V

    .line 1118
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2, v2, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method private getHorizontalGravity()I
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGravity:I

    if-nez v0, :cond_0

    .line 811
    const/4 v0, 0x1

    .line 816
    :goto_0
    return v0

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v0, :cond_1

    .line 814
    const/4 v0, 0x5

    goto :goto_0

    .line 816
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getListItemParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 760
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxWidth:I

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getListParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 754
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getPackageItemActionTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 2

    .prologue
    .line 1144
    new-instance v0, Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;-><init>(Landroid/content/Context;)V

    .line 1145
    .local v0, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGravity(I)V

    .line 1146
    return-object v0
.end method

.method private getParams(F)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p1, "dimAmount"    # F

    .prologue
    const/4 v6, 0x0

    .line 789
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOverlayWidth()I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x7d2

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDimBehind:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    :goto_0
    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 796
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDimBehind:Z

    if-eqz v1, :cond_0

    .line 797
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 800
    :cond_0
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getHorizontalGravity()I

    move-result v1

    or-int/lit8 v1, v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 801
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOffsetStart()I

    move-result v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonsVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v6, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxHeight:I

    :cond_1
    sub-int/2addr v1, v6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 806
    return-object v0

    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move v4, v6

    .line 789
    goto :goto_0
.end method

.method private getRecentItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;
    .locals 4

    .prologue
    const/high16 v3, -0x1000000

    const/4 v2, 0x0

    .line 1096
    new-instance v0, Lorg/omnirom/omniswitch/ui/PackageTextView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;-><init>(Landroid/content/Context;)V

    .line 1097
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v1, :cond_0

    .line 1098
    invoke-virtual {v0, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTextColor(I)V

    .line 1099
    invoke-virtual {v0, v2, v2, v2, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setShadowLayer(FFFI)V

    .line 1104
    :goto_0
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1105
    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setGravity(I)V

    .line 1106
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getListItemParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setMaxLines(I)V

    .line 1108
    return-object v0

    .line 1101
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTextColor(I)V

    .line 1102
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2, v2, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method private getRecentsListParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 748
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private handleLongPressAppDrawer(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 913
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 914
    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopup:Landroid/widget/PopupMenu;

    .line 915
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0b0001

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 917
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f080039

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    invoke-virtual {p1}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 918
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$21;

    invoke-direct {v0, p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchLayout$21;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/PackageManager$PackageItem;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 931
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$22;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$22;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 936
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 937
    return-void

    .line 917
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleLongPressFavorite(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 888
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 889
    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopup:Landroid/widget/PopupMenu;

    .line 890
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 892
    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$19;

    invoke-direct {v1, p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchLayout$19;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/PackageManager$PackageItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 904
    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$20;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$20;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 909
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 910
    return-void
.end method

.method private handleLongPressRecent(Lorg/omnirom/omniswitch/TaskDescription;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 846
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 847
    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopup:Landroid/widget/PopupMenu;

    .line 848
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0b0002

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 850
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f080039

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    invoke-virtual {p1}, Lorg/omnirom/omniswitch/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 851
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;

    invoke-direct {v0, p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/TaskDescription;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 879
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$18;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$18;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 884
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 885
    return-void
.end method

.method private declared-synchronized hideDone()V
    .locals 3

    .prologue
    .line 697
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setVisibility(I)V

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mTaskLoadDone:Z

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mUpdateNoRecentsTasksDone:Z

    .line 707
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 708
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->notifyDataSetChanged()V

    .line 709
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->scrollTo(II)V

    .line 711
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchManager;->getSwitchGestureView()Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->overlayHidden()V

    .line 714
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mVirtualBackKey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    if-nez v0, :cond_0

    .line 715
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/Utils;->triggerVirtualKeypress(Landroid/os/Handler;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :cond_0
    monitor-exit p0

    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 698
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized initView()V
    .locals 7

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 559
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->updateStyle()V

    .line 561
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v2, :cond_2

    .line 562
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 580
    :goto_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRamUsageBarContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowRambar:Z

    if-eqz v2, :cond_6

    move v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 582
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchConfiguration;->calcHorizontalDivider()V

    .line 584
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getListParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->scrollTo(I)V

    .line 586
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setDividerWidth(I)V

    .line 587
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setPadding(IIII)V

    .line 589
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getRecentsListParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->scrollTo(I)V

    .line 591
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setDividerWidth(I)V

    .line 592
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setPadding(IIII)V

    .line 594
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getListParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mMaxWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 597
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getAppDrawerParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->requestLayout()V

    .line 599
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setScaleX(F)V

    .line 600
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecents:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 601
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecents:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 602
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowAppDrawer:Z

    .line 603
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 604
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 606
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 608
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHasFavorites:Z

    if-eqz v2, :cond_7

    move v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 609
    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHasFavorites:Z

    if-nez v2, :cond_0

    .line 610
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    .line 612
    :cond_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-boolean v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    if-eqz v3, :cond_9

    :goto_4
    invoke-virtual {v2, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setVisibility(I)V

    .line 615
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHasFavorites:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowcaseDone:Z

    if-nez v0, :cond_1

    .line 616
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$15;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$15;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 627
    :cond_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->buildButtons()V

    .line 629
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->resetButtonGlow()V

    .line 631
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->isButtonVisible()Z

    move-result v0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonsVisible:Z

    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mVirtualBackKey:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    monitor-exit p0

    return-void

    .line 564
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 565
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDimBehind:Z

    if-nez v2, :cond_5

    .line 566
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGravity:I

    if-nez v2, :cond_3

    .line 567
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 575
    :goto_5
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x437f0000    # 255.0f

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBackgroundOpacity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 569
    :cond_3
    :try_start_2
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v2, :cond_4

    .line 570
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 572
    :cond_4
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 577
    :cond_5
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0

    :cond_6
    move v2, v1

    .line 580
    goto/16 :goto_1

    :cond_7
    move v2, v1

    .line 608
    goto/16 :goto_2

    .line 612
    :cond_8
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    aget-object v2, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :cond_9
    move v0, v1

    .line 613
    goto/16 :goto_4
.end method

.method private interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "ti"    # Landroid/animation/TimeInterpolator;
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1320
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1321
    return-object p2
.end method

.method private isButtonVisible()Z
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonListItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetButtonGlow()V
    .locals 3

    .prologue
    .line 1706
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonListItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1707
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonListItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 1708
    .local v1, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getOriginalImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1710
    .end local v1    # "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    :cond_0
    return-void
.end method

.method private setButtonGlow(Landroid/widget/ImageButton;IZ)V
    .locals 3
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "state"    # I
    .param p3, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1071
    if-eqz p3, :cond_1

    .line 1072
    if-nez p2, :cond_0

    .line 1073
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableGlow:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1084
    :goto_0
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableGlow:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1078
    :cond_1
    if-nez p2, :cond_2

    .line 1079
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1081
    :cond_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vis"    # I

    .prologue
    .line 1310
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$26;

    invoke-direct {v0, p0, p2, p3}, Lorg/omnirom/omniswitch/ui/SwitchLayout$26;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1316
    return-object p1
.end method

.method private declared-synchronized showDone()V
    .locals 2

    .prologue
    .line 675
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 676
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->updateRamBarTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 677
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->updateRecentsAppsList(Z)V

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowing:Z

    .line 680
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchManager;->getSwitchGestureView()Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->overlayShown()V

    .line 682
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHasFavorites:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowcaseDone:Z

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$16;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$16;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :cond_0
    monitor-exit p0

    return-void

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private start(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1330
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1331
    return-object p1
.end method

.method private startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;
    .locals 2
    .param p1, "d"    # I
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 1325
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1326
    return-object p2
.end method

.method private startShowcaseFavorite()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 1019
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "showcase_favorite_done"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showcase_favorite_done"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1021
    new-instance v6, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;

    invoke-direct {v6}, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;-><init>()V

    .line 1022
    iput-boolean v7, v6, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->hideOnClickOutside:Z

    .line 1024
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1025
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1027
    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavoriteY:F

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f09000d

    const v5, 0x7f09000e

    invoke-static/range {v0 .. v6}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->insertShowcaseView(FFLandroid/view/WindowManager;Landroid/content/Context;IILorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;)Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowcaseView:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    .line 1030
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowcaseView:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    invoke-virtual {v0, p0}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setOnShowcaseEventListener(Lorg/omnirom/omniswitch/showcase/ShowcaseView$OnShowcaseEventListener;)V

    .line 1031
    iput-boolean v7, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowcaseDone:Z

    move v0, v7

    .line 1035
    :goto_0
    return v0

    .line 1034
    :cond_0
    iput-boolean v7, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowcaseDone:Z

    goto :goto_0
.end method

.method private toggleAppdrawer()V
    .locals 1

    .prologue
    .line 1087
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowAppDrawer:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowAppDrawer:Z

    .line 1088
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowAppDrawer:Z

    if-eqz v0, :cond_1

    .line 1089
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->flipToAppDrawer()V

    .line 1093
    :goto_1
    return-void

    .line 1087
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1091
    :cond_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->flipToRecents()V

    goto :goto_1
.end method

.method private toggleFavorites()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1216
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    .line 1218
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1222
    :cond_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    if-eqz v0, :cond_2

    .line 1223
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setVisibility(I)V

    .line 1224
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setScaleY(F)V

    .line 1225
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setPivotY(F)V

    .line 1226
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavAnim:Landroid/animation/Animator;

    .line 1238
    :goto_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavAnim:Landroid/animation/Animator;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$24;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$24;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1255
    return-void

    :cond_1
    move v0, v1

    .line 1216
    goto :goto_0

    .line 1230
    :cond_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setScaleY(F)V

    .line 1231
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setPivotY(F)V

    .line 1232
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavAnim:Landroid/animation/Animator;

    goto :goto_1

    .line 1226
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1232
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private toggleOverlay(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1258
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mToggleOverlayAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mToggleOverlayAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1262
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v0, :cond_1

    .line 1263
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentOverlayWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1268
    :goto_0
    if-eqz p1, :cond_2

    .line 1269
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1270
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mToggleOverlayAnim:Landroid/animation/Animator;

    .line 1280
    :goto_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mToggleOverlayAnim:Landroid/animation/Animator;

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$25;

    invoke-direct {v1, p0, p1}, Lorg/omnirom/omniswitch/ui/SwitchLayout$25;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1306
    return-void

    .line 1265
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 1274
    :cond_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1275
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->start(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mToggleOverlayAnim:Landroid/animation/Animator;

    goto :goto_1

    .line 1270
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1275
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private declared-synchronized updateRecentsAppsList(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 524
    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mUpdateNoRecentsTasksDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 530
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    if-eqz v0, :cond_0

    .line 537
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mTaskLoadDone:Z

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->notifyDataSetChanged()V

    .line 548
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setVisibility(I)V

    .line 555
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mUpdateNoRecentsTasksDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 552
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private updateStyle()V
    .locals 7

    .prologue
    const/high16 v2, 0x40a00000    # 5.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    .line 1721
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mForegroundProcessText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1722
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackgroundProcessText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1724
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonListContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1726
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1727
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1728
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1729
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1730
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1731
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->colorize(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1732
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableGlow:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    aput-object v1, v0, v5

    .line 1733
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableGlow:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v6

    aput-object v1, v0, v6

    .line 1749
    :goto_0
    return-void

    .line 1735
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mButtonListContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1736
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1737
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1738
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1739
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mNoRecentApps:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1740
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1741
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->shadow(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v6

    .line 1742
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableGlow:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1745
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableGlow:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    aput-object v1, v0, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized hide()V
    .locals 3

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 745
    :goto_0
    monitor-exit p0

    return-void

    .line 725
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowing:Z

    .line 727
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDimBehind:Z

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getParams(F)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 740
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAnimate:Z

    if-eqz v0, :cond_3

    .line 741
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->toggleOverlay(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 743
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->hideDone()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isHandleRecentsUpdate()Z
    .locals 1

    .prologue
    .line 1717
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHandleRecentsUpdate:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowing:Z

    return v0
.end method

.method public onShowcaseViewHide(Lorg/omnirom/omniswitch/showcase/ShowcaseView;)V
    .locals 0
    .param p1, "showcaseView"    # Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    .prologue
    .line 1039
    return-void
.end method

.method public refresh(Ljava/util/List;)V
    .locals 2
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
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/TaskDescription;>;"
    const/4 v1, 0x1

    .line 838
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 839
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 841
    iput-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mTaskLoadDone:Z

    .line 842
    invoke-direct {p0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->updateRecentsAppsList(Z)V

    .line 843
    return-void
.end method

.method public setHandleRecentsUpdate(Z)V
    .locals 0
    .param p1, "handleRecentsUpdate"    # Z

    .prologue
    .line 1713
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHandleRecentsUpdate:Z

    .line 1714
    return-void
.end method

.method public setRecentsManager(Lorg/omnirom/omniswitch/SwitchManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/omnirom/omniswitch/SwitchManager;

    .prologue
    .line 289
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;

    .line 290
    return-void
.end method

.method public declared-synchronized show()V
    .locals 4

    .prologue
    .line 641
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 669
    :goto_0
    monitor-exit p0

    return-void

    .line 645
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_1

    .line 646
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->createView()V

    .line 649
    :cond_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->initView()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    :try_start_2
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBackgroundOpacity:F

    invoke-direct {p0, v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getParams(F)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 664
    :goto_1
    :try_start_3
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAnimate:Z

    if-eqz v1, :cond_2

    .line 665
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->toggleOverlay(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 657
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 660
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBackgroundOpacity:F

    invoke-direct {p0, v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getParams(F)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 667
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->showDone()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public shutdownService()V
    .locals 3

    .prologue
    .line 1336
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_favorite"

    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1337
    return-void
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
    .line 822
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/TaskDescription;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->isHandleRecentsUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 827
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mTaskLoadDone:Z

    .line 830
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->updateRecentsAppsList(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    :cond_0
    monitor-exit p0

    return-void

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateLayout()V
    .locals 5

    .prologue
    .line 1047
    :try_start_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowing:Z

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->calcHorizontalDivider()V

    .line 1050
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setDividerWidth(I)V

    .line 1051
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setPadding(IIII)V

    .line 1053
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setDividerWidth(I)V

    .line 1054
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mHorizontalDividerWidth:I

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setPadding(IIII)V

    .line 1056
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->notifyDataSetChanged()V

    .line 1057
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1059
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->notifyDataSetChanged()V

    .line 1060
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1062
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mBackgroundOpacity:F

    invoke-direct {p0, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->getParams(F)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1063
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 943
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 944
    const-string v0, "favorite_apps"

    const-string v4, ""

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    invoke-static {v0, v4}, Lorg/omnirom/omniswitch/Utils;->parseFavorites(Ljava/lang/String;Ljava/util/List;)V

    .line 947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 948
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 949
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 950
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 952
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/omnirom/omniswitch/PackageManager;->getPackageItem(Ljava/lang/String;)Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    move-result-object v5

    .line 953
    if-nez v5, :cond_0

    .line 954
    const-string v5, "SwitchLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 959
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHasFavorites:Z

    .line 960
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->notifyDataSetChanged()V

    .line 961
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    if-eqz v0, :cond_2

    .line 962
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;

    invoke-virtual {v0, v4}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 964
    :cond_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->notifyDataSetChanged()V

    .line 965
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    if-eqz v0, :cond_3

    .line 966
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;

    invoke-virtual {v0, v4}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 968
    :cond_3
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->notifyDataSetChanged()V

    .line 969
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    if-eqz v0, :cond_4

    .line 970
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawer:Landroid/widget/GridView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAppDrawerListAdapter:Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 972
    :cond_4
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->buildButtonList()V

    .line 974
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHasFavorites:Z

    if-nez v0, :cond_5

    .line 975
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    .line 977
    :cond_5
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    .line 978
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mHasFavorites:Z

    if-eqz v0, :cond_9

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 979
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 981
    :cond_6
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    if-eqz v0, :cond_7

    .line 982
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteListHorizontal:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-boolean v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z

    if-eqz v1, :cond_b

    :goto_4
    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setVisibility(I)V

    .line 984
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 959
    goto :goto_1

    :cond_9
    move v0, v3

    .line 978
    goto :goto_2

    .line 979
    :cond_a
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteDrawableDefault:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v1

    goto :goto_3

    :cond_b
    move v2, v3

    .line 982
    goto :goto_4
.end method
