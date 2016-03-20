.class public Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissHorizontalListViewTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;,
        Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;

.field private mDismissAnimationRefCount:I

.field private mDownPosition:I

.field private mDownView:Landroid/view/View;

.field private mDownY:F

.field private mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mPaused:Z

.field private mPendingDismisses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;",
            ">;"
        }
    .end annotation
.end field

.field private mSlop:I

.field private mSwiping:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewHeight:I


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;)V
    .locals 3
    .param p1, "listView"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p2, "callbacks"    # Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v1, 0x1

    iput v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mViewHeight:I

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDismissAnimationRefCount:I

    .line 139
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 140
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mSlop:I

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mMinFlingVelocity:I

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mMaxFlingVelocity:I

    .line 143
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mAnimationTime:J

    .line 145
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    .line 146
    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mCallbacks:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->performDismiss(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    .prologue
    .line 78
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$106(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    .prologue
    .line 78
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDismissAnimationRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDismissAnimationRefCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    .prologue
    .line 78
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mCallbacks:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;

    return-object v0
.end method

.method private dismiss(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "dismissUp"    # Z

    .prologue
    .line 339
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDismissAnimationRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDismissAnimationRefCount:I

    .line 340
    if-nez p1, :cond_0

    .line 344
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mCallbacks:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;->onDismiss(Lorg/omnirom/omniswitch/ui/HorizontalListView;[I)V

    .line 356
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p3, :cond_1

    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mViewHeight:I

    neg-int v0, v0

    int-to-float v0, v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mAnimationTime:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$2;-><init>(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mViewHeight:I

    int-to-float v0, v0

    goto :goto_1
.end method

.method private performDismiss(Landroid/view/View;I)V
    .locals 6
    .param p1, "dismissView"    # Landroid/view/View;
    .param p2, "dismissPosition"    # I

    .prologue
    const/4 v5, 0x1

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 390
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 392
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mAnimationTime:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 395
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;

    invoke-direct {v3, p0, v2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;-><init>(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 425
    new-instance v3, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$4;

    invoke-direct {v3, p0, v1, p1}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$4;-><init>(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 433
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPendingDismisses:Ljava/util/List;

    new-instance v4, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;

    invoke-direct {v4, p0, p2, p1}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;-><init>(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;ILandroid/view/View;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 436
    return-void
.end method


# virtual methods
.method public cancelSwipe()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 443
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mAnimationTime:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 449
    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 450
    iput v4, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownY:F

    .line 451
    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    .line 452
    const/4 v0, -0x1

    iput v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownPosition:I

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mSwiping:Z

    .line 454
    return-void
.end method

.method public isSwiping()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mSwiping:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    move-object/from16 v0, p0

    iget v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mViewHeight:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v15}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mViewHeight:I

    .line 206
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 335
    :cond_1
    :goto_0
    const/4 v15, 0x0

    :goto_1
    return v15

    .line 208
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPaused:Z

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownPosition:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 209
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 217
    :cond_3
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 218
    .local v11, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v15}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildCount()I

    move-result v5

    .line 219
    .local v5, "childCount":I
    const/4 v15, 0x2

    new-array v10, v15, [I

    .line 220
    .local v10, "listViewCoords":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v15, v10}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getLocationOnScreen([I)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x0

    aget v16, v10, v16

    sub-int v13, v15, v16

    .line 222
    .local v13, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    float-to-int v15, v15

    const/16 v16, 0x1

    aget v16, v10, v16

    sub-int v14, v15, v16

    .line 224
    .local v14, "y":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v5, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v15, v9}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 226
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 227
    invoke-virtual {v11, v13, v14}, Landroid/graphics/Rect;->contains(II)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 228
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    .line 233
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    if-eqz v15, :cond_5

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownY:F

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mCallbacks:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownPosition:I

    move/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;->canDismiss(I)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 236
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 242
    :cond_5
    :goto_3
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 224
    .restart local v4    # "child":Landroid/view/View;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 239
    .end local v4    # "child":Landroid/view/View;
    :cond_7
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    goto :goto_3

    .line 246
    .end local v5    # "childCount":I
    .end local v9    # "i":I
    .end local v10    # "listViewCoords":[I
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_1

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownY:F

    move/from16 v16, v0

    sub-float v6, v15, v16

    .line 255
    .local v6, "deltaY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v16, 0x3e8

    invoke-virtual/range {v15 .. v16}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v12

    .line 258
    .local v12, "velocityY":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 259
    .local v2, "absVelocityX":F
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 260
    .local v3, "absVelocityY":F
    const/4 v7, 0x0

    .line 261
    .local v7, "dismiss":Z
    const/4 v8, 0x0

    .line 262
    .local v8, "dismissUp":Z
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mViewHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    mul-double v17, v17, v19

    cmpl-double v15, v15, v17

    if-lez v15, :cond_a

    .line 263
    const/4 v7, 0x1

    .line 264
    const/4 v15, 0x0

    cmpg-float v15, v6, v15

    if-gez v15, :cond_9

    const/4 v8, 0x1

    .line 272
    :cond_8
    :goto_4
    if-eqz v7, :cond_f

    .line 274
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1, v8}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->dismiss(Landroid/view/View;IZ)V

    .line 280
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->recycle()V

    .line 281
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 282
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownY:F

    .line 283
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    .line 284
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownPosition:I

    .line 285
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 264
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 265
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mMinFlingVelocity:I

    int-to-float v15, v15

    cmpg-float v15, v15, v2

    if-gtz v15, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mMaxFlingVelocity:I

    int-to-float v15, v15

    cmpg-float v15, v2, v15

    if-gtz v15, :cond_8

    cmpg-float v15, v3, v2

    if-gez v15, :cond_8

    .line 269
    const/4 v15, 0x0

    cmpg-float v15, v12, v15

    if-gez v15, :cond_b

    const/4 v15, 0x1

    move/from16 v16, v15

    :goto_6
    const/4 v15, 0x0

    cmpg-float v15, v6, v15

    if-gez v15, :cond_c

    const/4 v15, 0x1

    :goto_7
    move/from16 v0, v16

    if-ne v0, v15, :cond_d

    const/4 v7, 0x1

    .line 270
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v15

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_e

    const/4 v8, 0x1

    :goto_9
    goto :goto_4

    .line 269
    :cond_b
    const/4 v15, 0x0

    move/from16 v16, v15

    goto :goto_6

    :cond_c
    const/4 v15, 0x0

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    goto :goto_8

    .line 270
    :cond_e
    const/4 v8, 0x0

    goto :goto_9

    .line 277
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_5

    .line 290
    .end local v2    # "absVelocityX":F
    .end local v3    # "absVelocityY":F
    .end local v6    # "deltaY":F
    .end local v7    # "dismiss":Z
    .end local v8    # "dismissUp":Z
    .end local v12    # "velocityY":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_1

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    if-eqz v15, :cond_10

    .line 296
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mAnimationTime:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 299
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->recycle()V

    .line 300
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 301
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownY:F

    .line 302
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    .line 303
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownPosition:I

    .line 304
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 309
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPaused:Z

    if-nez v15, :cond_1

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownY:F

    move/from16 v16, v0

    sub-float v6, v15, v16

    .line 314
    .restart local v6    # "deltaY":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mSlop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v15, v15, v16

    if-lez v15, :cond_11

    .line 315
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mSwiping:Z

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 323
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mSwiping:Z

    if-eqz v15, :cond_1

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    invoke-virtual {v15, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownView:Landroid/view/View;

    const v16, 0x3e19999a    # 0.15f

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mViewHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    sub-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setAlpha(F)V

    .line 330
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapterIndex(I)V
    .locals 0
    .param p1, "adapterIndex"    # I

    .prologue
    .line 197
    iput p1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDownPosition:I

    .line 198
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 160
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPaused:Z

    .line 161
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
