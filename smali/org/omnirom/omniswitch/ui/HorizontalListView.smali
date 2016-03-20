.class public Lorg/omnirom/omniswitch/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;,
        Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener;,
        Lorg/omnirom/omniswitch/ui/HorizontalListView$RunningOutOfDataListener;,
        Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mAdapterDataObserver:Landroid/database/DataSetObserver;

.field private mBlockTouchAction:Z

.field private mCurrentScrollState:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field protected mCurrentX:I

.field private mCurrentlySelectedAdapterIndex:I

.field private mDataChanged:Z

.field private mDelayedLayout:Ljava/lang/Runnable;

.field private mDisplayOffset:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mDownX:F

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field protected mFlingTracker:Landroid/widget/Scroller;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;

.field private mHasNotifiedRunningLowOnData:Z

.field private mHeightMeasureSpec:I

.field private mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

.field private mLeftViewAdapterIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnScrollStateChangedListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener;

.field private mRect:Landroid/graphics/Rect;

.field private mRemovedViewsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRestoreX:Ljava/lang/Integer;

.field private mRightViewAdapterIndex:I

.field private mRunningOutOfDataListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$RunningOutOfDataListener;

.field private mRunningOutOfDataThreshold:I

.field private mScrollXThreshold:I

.field private mSelectionListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

.field private mSlop:I

.field private mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

.field private mViewBeingTouched:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 247
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    .line 118
    new-instance v1, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;

    invoke-direct {v1, p0, v4}, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;-><init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;Lorg/omnirom/omniswitch/ui/HorizontalListView$1;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mGestureListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    .line 136
    iput-boolean v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDataChanged:Z

    .line 139
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRect:Landroid/graphics/Rect;

    .line 145
    iput-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 148
    iput v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    .line 151
    iput-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 160
    iput-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 166
    const v1, 0x7fffffff

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    .line 181
    iput-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRunningOutOfDataListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$RunningOutOfDataListener;

    .line 187
    iput v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRunningOutOfDataThreshold:I

    .line 193
    iput-boolean v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    .line 198
    iput-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mOnScrollStateChangedListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener;

    .line 204
    sget-object v1, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentScrollState:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 223
    iput-boolean v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mBlockTouchAction:Z

    .line 229
    iput-boolean v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    .line 429
    new-instance v1, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;-><init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    .line 730
    new-instance v1, Lorg/omnirom/omniswitch/ui/HorizontalListView$3;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView$3;-><init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    .line 248
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 249
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 250
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mGestureListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 251
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->bindGestureDetector()V

    .line 252
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->initView()V

    .line 253
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->retrieveXmlConfiguration(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 254
    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setWillNotDraw(Z)V

    .line 256
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 257
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSlop:I

    .line 258
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSlop:I

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mScrollXThreshold:I

    .line 259
    return-void
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    iget v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSlop:I

    return v0
.end method

.method static synthetic access$1100(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    iget v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mScrollXThreshold:I

    return v0
.end method

.method static synthetic access$1200(Lorg/omnirom/omniswitch/ui/HorizontalListView;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/omnirom/omniswitch/ui/HorizontalListView;Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p1, "x1"    # Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/omnirom/omniswitch/ui/HorizontalListView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->updateOverscrollAnimation(I)V

    return-void
.end method

.method static synthetic access$1500(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mBlockTouchAction:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$202(Lorg/omnirom/omniswitch/ui/HorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$302(Lorg/omnirom/omniswitch/ui/HorizontalListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    return p1
.end method

.method static synthetic access$400(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->unpressTouchedChild()V

    return-void
.end method

.method static synthetic access$500(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$600(Lorg/omnirom/omniswitch/ui/HorizontalListView;)F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    iget v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDownX:F

    return v0
.end method

.method static synthetic access$602(Lorg/omnirom/omniswitch/ui/HorizontalListView;F)F
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p1, "x1"    # F

    .prologue
    .line 91
    iput p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDownX:F

    return p1
.end method

.method static synthetic access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    return-object v0
.end method

.method static synthetic access$800(Lorg/omnirom/omniswitch/ui/HorizontalListView;II)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .prologue
    .line 91
    iget v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    return v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 553
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 554
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->measureChild(Landroid/view/View;)V

    .line 555
    return-void
.end method

.method private bindGestureDetector()V
    .locals 1

    .prologue
    .line 268
    new-instance v0, Lorg/omnirom/omniswitch/ui/HorizontalListView$1;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView$1;-><init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    .line 276
    .local v0, "gestureListenerHandler":Landroid/view/View$OnTouchListener;
    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    return-void
.end method

.method private determineFlingAbsorbVelocity()F
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method private determineIfLowOnData()V
    .locals 2

    .prologue
    .line 1407
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRunningOutOfDataListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$RunningOutOfDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRunningOutOfDataThreshold:I

    if-ge v0, v1, :cond_0

    .line 1412
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    if-nez v0, :cond_0

    .line 1413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    .line 1414
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRunningOutOfDataListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$RunningOutOfDataListener;

    invoke-interface {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView$RunningOutOfDataListener;->onRunningOutOfData()V

    .line 1417
    :cond_0
    return-void
.end method

.method private determineMaxX()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 756
    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v1

    .line 759
    .local v1, "rightView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 760
    iget v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    .line 763
    .local v0, "oldMaxX":I
    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRenderWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    .line 767
    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    if-gez v3, :cond_0

    .line 768
    iput v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    .line 771
    :cond_0
    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    if-eq v3, v0, :cond_1

    .line 772
    const/4 v2, 0x1

    .line 777
    .end local v0    # "oldMaxX":I
    .end local v1    # "rightView":Landroid/view/View;
    :cond_1
    return v2
.end method

.method private drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1087
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1089
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1091
    :cond_0
    return-void
.end method

.method private drawDividers(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1035
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildCount()I

    move-result v2

    .line 1039
    .local v2, "count":I
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRect:Landroid/graphics/Rect;

    .line 1040
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1041
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRenderHeight()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1044
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 1046
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_0

    iget v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v4}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1047
    :cond_0
    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1049
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1050
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1053
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1054
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1058
    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_2

    .line 1059
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1063
    :cond_2
    invoke-direct {p0, p1, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1069
    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 1070
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1071
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1072
    invoke-direct {p0, p1, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1044
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1076
    :cond_4
    return-void
.end method

.method private drawEdgeGlow(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 999
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1003
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1004
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getHeight()I

    move-result v0

    .line 1006
    .local v0, "height":I
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1007
    neg-int v3, v0

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1009
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1010
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->invalidate()V

    .line 1014
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1031
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    :cond_1
    :goto_0
    return-void

    .line 1015
    :cond_2
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1019
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1020
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getWidth()I

    move-result v2

    .line 1022
    .local v2, "width":I
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1023
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1024
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1025
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1026
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->invalidate()V

    .line 1029
    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private fillList(I)V
    .locals 2
    .param p1, "dx"    # I

    .prologue
    .line 786
    const/4 v1, 0x0

    .line 787
    .local v1, "edge":I
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 788
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 794
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->fillListRight(II)V

    .line 797
    const/4 v1, 0x0

    .line 798
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 804
    :cond_1
    invoke-direct {p0, v1, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->fillListLeft(II)V

    .line 805
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .param p1, "leftEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 877
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2

    .line 878
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 879
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 881
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 884
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_1
    sub-int/2addr p1, v1

    .line 889
    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDisplayOffset:I

    add-int v1, p1, p2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_2
    sub-int v1, v2, v1

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    .line 884
    :cond_0
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 889
    :cond_1
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2

    .line 892
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private fillListRight(II)V
    .locals 4
    .param p1, "rightEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 849
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 850
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    .line 854
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    if-gez v1, :cond_0

    .line 855
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 860
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 862
    .local v0, "child":Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 866
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 871
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->determineIfLowOnData()V

    goto :goto_0

    .line 866
    :cond_1
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    goto :goto_1

    .line 873
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private getChild(I)Landroid/view/View;
    .locals 1
    .param p1, "adapterIndex"    # I

    .prologue
    .line 936
    iget v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    if-gt p1, v0, :cond_0

    .line 938
    iget v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    .line 941
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getChildIndex(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 957
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildCount()I

    move-result v0

    .line 959
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 960
    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 961
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 966
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 959
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 966
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 582
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 583
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 586
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 591
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-object v0
.end method

.method private getLeftmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRecycledView(I)Landroid/view/View;
    .locals 2
    .param p1, "adapterIndex"    # I

    .prologue
    .line 518
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 520
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 524
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRenderHeight()I
    .locals 2

    .prologue
    .line 979
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRenderWidth()I
    .locals 2

    .prologue
    .line 984
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRightmostChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 926
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 409
    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 410
    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    .line 411
    iput v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDisplayOffset:I

    .line 412
    iput v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    .line 413
    iput v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    .line 414
    const v0, 0x7fffffff

    iput v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    .line 415
    sget-object v0, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 416
    return-void
.end method

.method private initializeRecycledViewCache(I)V
    .locals 3
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 504
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 505
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 506
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 508
    :cond_0
    return-void
.end method

.method private isEdgeGlowEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1544
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1549
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isItemViewTypeValid(I)Z
    .locals 1
    .param p1, "itemViewType"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastItemInAdapter(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 974
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 564
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 565
    .local v1, "childLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mHeightMeasureSpec:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 569
    .local v0, "childHeightSpec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    .line 570
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 577
    .local v2, "childWidthSpec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 578
    return-void

    .line 573
    .end local v2    # "childWidthSpec":I
    :cond_0
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .restart local v2    # "childWidthSpec":I
    goto :goto_0
.end method

.method private positionChildren(I)V
    .locals 10
    .param p1, "dx"    # I

    .prologue
    .line 896
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildCount()I

    move-result v2

    .line 898
    .local v2, "childCount":I
    if-lez v2, :cond_0

    .line 899
    iget v8, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDisplayOffset:I

    .line 900
    iget v5, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDisplayOffset:I

    .line 903
    .local v5, "leftOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 904
    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 905
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int v4, v5, v8

    .line 906
    .local v4, "left":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getPaddingTop()I

    move-result v7

    .line 907
    .local v7, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v4, v8

    .line 908
    .local v6, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 911
    .local v0, "bottom":I
    invoke-virtual {v1, v4, v7, v6, v0}, Landroid/view/View;->layout(IIII)V

    .line 914
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    .line 903
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 917
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "left":I
    .end local v5    # "leftOffset":I
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method private recycleView(ILandroid/view/View;)V
    .locals 2
    .param p1, "adapterIndex"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 537
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 538
    .local v0, "itemViewType":I
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 541
    :cond_0
    return-void
.end method

.method private releaseEdgeGlow()V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1358
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1361
    :cond_1
    return-void
.end method

.method private removeNonVisibleChildren(I)V
    .locals 4
    .param p1, "dx"    # I

    .prologue
    .line 808
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    .line 811
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_1

    .line 818
    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDisplayOffset:I

    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDisplayOffset:I

    .line 823
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->recycleView(ILandroid/view/View;)V

    .line 826
    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 829
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I

    .line 832
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 818
    :cond_0
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 835
    :cond_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    .line 838
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 839
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->recycleView(ILandroid/view/View;)V

    .line 840
    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 841
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRightViewAdapterIndex:I

    .line 842
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 844
    :cond_2
    return-void
.end method

.method private requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "disallowIntercept"    # Ljava/lang/Boolean;

    .prologue
    .line 294
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 295
    move-object v0, p0

    .line 297
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ListView;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_2

    .line 302
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 304
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mIsParentVerticiallyScrollableViewDisallowingInterceptTouchEvent:Z

    .line 311
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 308
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method private reset()V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->initView()V

    .line 424
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 425
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestLayout()V

    .line 426
    return-void
.end method

.method private retrieveXmlConfiguration(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 322
    if-eqz p2, :cond_2

    .line 323
    sget-object v3, Lorg/omnirom/omniswitch/R$styleable;->HorizontalListView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 327
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 329
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 336
    :cond_0
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 338
    .local v2, "dividerWidth":I
    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setDividerWidth(I)V

    .line 342
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "dividerWidth":I
    :cond_2
    return-void
.end method

.method private setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 1
    .param p1, "newScrollState"    # Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 1484
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentScrollState:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mOnScrollStateChangedListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener;

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mOnScrollStateChangedListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener;

    invoke-interface {v0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener;->onScrollStateChanged(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1489
    :cond_0
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentScrollState:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .line 1490
    return-void
.end method

.method private unpressTouchedChild()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1156
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1159
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->refreshDrawableState()V

    .line 1161
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSelectionListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSelectionListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;->onItemSelected(Landroid/view/View;Z)V

    .line 1166
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 1168
    :cond_1
    return-void
.end method

.method private updateOverscrollAnimation(I)V
    .locals 5
    .param p1, "scrolledOffset"    # I

    .prologue
    .line 1499
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    if-nez v2, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    add-int v0, v2, p1

    .line 1507
    .local v0, "nextScrollPosition":I
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1510
    :cond_2
    if-gez v0, :cond_3

    .line 1513
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1516
    .local v1, "overscroll":I
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v3, v1

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRenderWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1519
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1520
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    .line 1522
    .end local v1    # "overscroll":I
    :cond_3
    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    if-le v0, v2, :cond_0

    .line 1526
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1529
    .restart local v1    # "overscroll":I
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v3, v1

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getRenderWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 1532
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1533
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1101
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1102
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->drawEdgeGlow(Landroid/graphics/Canvas;)V

    .line 1103
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 1111
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 688
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 691
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    if-nez v1, :cond_0

    .line 692
    const/4 v1, 0x0

    .line 701
    :goto_0
    return v1

    .line 693
    :cond_0
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    if-ge v1, v0, :cond_1

    .line 697
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 701
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    .prologue
    .line 707
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 710
    .local v0, "horizontalFadingEdgeLength":I
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    if-ne v1, v2, :cond_0

    .line 711
    const/4 v1, 0x0

    .line 720
    :goto_0
    return v1

    .line 712
    :cond_0
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    .line 716
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    .line 720
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChild(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1124
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mBlockTouchAction:Z

    .line 1127
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1128
    sget-object v1, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1130
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->unpressTouchedChild()V

    .line 1132
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mBlockTouchAction:Z

    if-nez v1, :cond_1

    .line 1134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildIndex(II)I

    move-result v0

    .line 1135
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1137
    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    .line 1139
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1141
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1143
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSelectionListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    if-eqz v1, :cond_0

    .line 1144
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSelectionListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    invoke-interface {v1, v3, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;->onItemSelected(Landroid/view/View;Z)V

    .line 1146
    :cond_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->refreshDrawableState()V

    .line 1151
    .end local v0    # "index":I
    :cond_1
    return v2

    .line 1124
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1095
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1096
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->drawDividers(Landroid/graphics/Canvas;)V

    .line 1097
    return-void
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x0

    .line 1115
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    neg-float v3, p3

    float-to-int v3, v3

    const v5, -0x7fffffff

    const v6, 0x7fffffff

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1116
    sget-object v0, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1117
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestLayout()V

    .line 1118
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 598
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 600
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_1

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->invalidate()V

    .line 609
    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDataChanged:Z

    if-eqz v2, :cond_2

    .line 610
    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    .line 611
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->initView()V

    .line 612
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 613
    iput v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    .line 614
    iput-boolean v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDataChanged:Z

    .line 618
    .end local v1    # "oldCurrentX":I
    :cond_2
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 619
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    .line 620
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 624
    :cond_3
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 626
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iput v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    .line 631
    :cond_4
    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    if-gez v2, :cond_7

    .line 632
    iput v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    .line 635
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 636
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->determineFlingAbsorbVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 639
    :cond_5
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 640
    sget-object v2, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 656
    :cond_6
    :goto_1
    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    sub-int v0, v2, v3

    .line 657
    .local v0, "dx":I
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->removeNonVisibleChildren(I)V

    .line 658
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->fillList(I)V

    .line 659
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->positionChildren(I)V

    .line 662
    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    iput v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    .line 666
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->determineMaxX()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 669
    invoke-virtual/range {p0 .. p5}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->onLayout(ZIIII)V

    goto :goto_0

    .line 641
    .end local v0    # "dx":I
    :cond_7
    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    if-le v2, v3, :cond_6

    .line 644
    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mMaxX:I

    iput v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    .line 647
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 648
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->determineFlingAbsorbVelocity()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 651
    :cond_8
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 652
    sget-object v2, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_1

    .line 674
    .restart local v0    # "dx":I
    :cond_9
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 676
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentScrollState:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object v3, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v2, v3, :cond_0

    .line 677
    sget-object v2, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto/16 :goto_0

    .line 681
    :cond_a
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 682
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    const-wide/16 v3, 0xa

    invoke-virtual {p0, v2, v3, v4}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 739
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 742
    iput p2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mHeightMeasureSpec:I

    .line 743
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 362
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 363
    check-cast v0, Landroid/os/Bundle;

    .line 366
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    .line 369
    const-string v1, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 372
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "BUNDLE_ID_PARENT_STATE"

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 355
    const-string v1, "BUNDLE_ID_CURRENT_X"

    iget v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 1316
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    invoke-virtual {v0, v3}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->setEnabled(Z)V

    .line 1318
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    invoke-virtual {v0, v4, p1}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1322
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1323
    :cond_1
    sget-object v0, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1327
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    .line 1329
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSelectionListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1330
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSelectionListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mViewBeingTouched:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;->onItemSelected(Landroid/view/View;Z)V

    .line 1333
    :cond_3
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->releaseEdgeGlow()V

    .line 1349
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1334
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1338
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    if-eqz v0, :cond_6

    .line 1339
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    invoke-virtual {v0, v3}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->setEnabled(Z)V

    .line 1340
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    invoke-virtual {v0, v4, p1}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1342
    :cond_6
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->unpressTouchedChild()V

    .line 1343
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->releaseEdgeGlow()V

    .line 1346
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 6
    .param p1, "x"    # I

    .prologue
    const/4 v2, 0x0

    .line 989
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mFlingTracker:Landroid/widget/Scroller;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    iget v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 990
    sget-object v0, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 991
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestLayout()V

    .line 992
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 91
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 472
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 476
    :cond_0
    if-eqz p1, :cond_1

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    .line 480
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 481
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 484
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->initializeRecycledViewCache(I)V

    .line 485
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->reset()V

    .line 486
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 383
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 385
    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setDividerWidth(I)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->setDividerWidth(I)V

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 401
    iput p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDividerWidth:I

    .line 404
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestLayout()V

    .line 405
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->invalidate()V

    .line 406
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1428
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1429
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 462
    iput p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    .line 463
    return-void
.end method

.method public setSelectionListener(Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    .prologue
    .line 1562
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSelectionListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    .line 1563
    return-void
.end method

.method public setSwipeListener(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)V
    .locals 0
    .param p1, "mSwipeListener"    # Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    .prologue
    .line 1558
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    .line 1559
    return-void
.end method
