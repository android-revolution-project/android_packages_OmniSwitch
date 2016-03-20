.class public Lorg/omnirom/omniswitch/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$SmoothAnimator;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;,
        Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;
    }
.end annotation


# instance fields
.field private mAdapterWrapper:Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;

.field private mAnimate:Z

.field private mBlockLayoutRequests:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mCancelMethod:I

.field private mChildHeightCache:Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;

.field private mCurrFloatAlpha:F

.field private mDownScrollStartY:I

.field private mDownScrollStartYF:F

.field private mDragDeltaX:I

.field private mDragDeltaY:I

.field private mDragDownScrollHeight:F

.field private mDragDownScrollStartFrac:F

.field private mDragEnabled:Z

.field private mDragFlags:I

.field private mDragListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;

.field private mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

.field private mDragSortTracker:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;

.field private mDragState:I

.field private mDragUpScrollHeight:F

.field private mDragUpScrollStartFrac:F

.field private mDropAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;

.field private mDropListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;

.field private mFirstExpPos:I

.field private mFloatAlpha:F

.field private mFloatLoc:Landroid/graphics/Point;

.field private mFloatPos:I

.field private mFloatView:Landroid/view/View;

.field private mFloatViewHeight:I

.field private mFloatViewHeightHalf:I

.field private mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

.field private mFloatViewMid:I

.field private mFloatViewOnMeasured:Z

.field private mIgnoreTouchEvent:Z

.field private mInTouchEvent:Z

.field private mItemHeightCollapsed:I

.field private mLastCallWasIntercept:Z

.field private mLastY:I

.field private mLiftAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;

.field private mMaxScrollSpeed:F

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRemoveAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;

.field private mRemoveListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;

.field private mSampleViewTypes:[Landroid/view/View;

.field private mScrollProfile:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;

.field private mSecondExpPos:I

.field private mSlideFrac:F

.field private mSlideRegionFrac:F

.field private mSrcPos:I

.field private mTouchLoc:Landroid/graphics/Point;

.field private mTrackDragSort:Z

.field private mUpScrollStartY:I

.field private mUpScrollStartYF:F

.field private mWidthMeasureSpec:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 33
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 417
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    .line 78
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    .line 88
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 99
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatAlpha:F

    .line 100
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 125
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mAnimate:Z

    .line 166
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragEnabled:Z

    .line 177
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    .line 184
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 200
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 206
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 218
    const v4, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 225
    const v4, 0x3eaaaaab

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 250
    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 258
    new-instance v4, Lorg/omnirom/omniswitch/dslv/DragSortListView$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$1;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mScrollProfile:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;

    .line 312
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragFlags:I

    .line 318
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 323
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    .line 328
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    .line 348
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelMethod:I

    .line 355
    const/high16 v4, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 364
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideFrac:F

    .line 377
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mTrackDragSort:Z

    .line 387
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 394
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    .line 408
    new-instance v4, Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;

    const/4 v9, 0x3

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mChildHeightCache:Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;

    .line 419
    const/16 v25, 0x96

    .line 420
    .local v25, "defaultDuration":I
    move/from16 v28, v25

    .line 421
    .local v28, "removeAnimDuration":I
    move/from16 v26, v25

    .line 423
    .local v26, "dropAnimDuration":I
    if-eqz p2, :cond_2

    .line 424
    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v9, Lorg/omnirom/omniswitch/R$styleable;->DragSortListView:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v23

    .line 427
    .local v23, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mItemHeightCollapsed:I

    .line 430
    const/4 v4, 0x5

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mTrackDragSort:Z

    .line 433
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v4, :cond_0

    .line 434
    new-instance v4, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragSortTracker:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;

    .line 438
    :cond_0
    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v9, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatAlpha:F

    .line 439
    move-object/from16 v0, p0

    iget v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatAlpha:F

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 441
    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragEnabled:Z

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragEnabled:Z

    .line 443
    const/4 v4, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x7

    const/high16 v12, 0x3f400000    # 0.75f

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideRegionFrac:F

    .line 448
    move-object/from16 v0, p0

    iget v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideRegionFrac:F

    const/4 v9, 0x0

    cmpl-float v4, v4, v9

    if-lez v4, :cond_6

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mAnimate:Z

    .line 450
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    .line 454
    .local v27, "frac":F
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 456
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mMaxScrollSpeed:F

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mMaxScrollSpeed:F

    .line 460
    const/16 v4, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v28

    .line 464
    const/16 v4, 0x9

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    .line 468
    const/16 v4, 0x10

    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v32

    .line 472
    .local v32, "useDefault":Z
    if-eqz v32, :cond_1

    .line 473
    const/16 v4, 0xc

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v29

    .line 476
    .local v29, "removeEnabled":Z
    const/4 v4, 0x4

    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 479
    .local v7, "removeMode":I
    const/16 v4, 0xb

    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v31

    .line 482
    .local v31, "sortEnabled":Z
    const/16 v4, 0xd

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 485
    .local v6, "dragInitMode":I
    const/16 v4, 0xe

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 488
    .local v5, "dragHandleId":I
    const/16 v4, 0xf

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 491
    .local v8, "clickRemoveId":I
    const/4 v4, 0x3

    const/high16 v9, -0x1000000

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v24

    .line 495
    .local v24, "bgColor":I
    new-instance v3, Lorg/omnirom/omniswitch/dslv/DragSortController;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/omnirom/omniswitch/dslv/DragSortController;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;IIII)V

    .line 498
    .local v3, "controller":Lorg/omnirom/omniswitch/dslv/DragSortController;
    move/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/omnirom/omniswitch/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 499
    move/from16 v0, v31

    invoke-virtual {v3, v0}, Lorg/omnirom/omniswitch/dslv/DragSortController;->setSortEnabled(Z)V

    .line 500
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/omnirom/omniswitch/dslv/DragSortController;->setBackgroundColor(I)V

    .line 502
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    .line 503
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 506
    .end local v3    # "controller":Lorg/omnirom/omniswitch/dslv/DragSortController;
    .end local v5    # "dragHandleId":I
    .end local v6    # "dragInitMode":I
    .end local v7    # "removeMode":I
    .end local v8    # "clickRemoveId":I
    .end local v24    # "bgColor":I
    .end local v29    # "removeEnabled":Z
    .end local v31    # "sortEnabled":Z
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    .line 509
    .end local v23    # "a":Landroid/content/res/TypedArray;
    .end local v27    # "frac":F
    .end local v32    # "useDefault":Z
    :cond_2
    new-instance v4, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    .line 511
    const/high16 v30, 0x3f000000    # 0.5f

    .line 512
    .local v30, "smoothness":F
    if-lez v28, :cond_3

    .line 513
    new-instance v4, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v28

    invoke-direct {v4, v0, v1, v2}, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mRemoveAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;

    .line 516
    :cond_3
    if-lez v26, :cond_4

    .line 517
    new-instance v4, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v26

    invoke-direct {v4, v0, v1, v2}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;FI)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDropAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;

    .line 520
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_5

    .line 521
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 523
    :cond_5
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v9 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    .line 526
    new-instance v4, Lorg/omnirom/omniswitch/dslv/DragSortListView$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$2;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    .line 543
    return-void

    .line 448
    .end local v30    # "smoothness":F
    .restart local v23    # "a":Landroid/content/res/TypedArray;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mMaxScrollSpeed:F

    return v0
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    return v0
.end method

.method static synthetic access$1000(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mItemHeightCollapsed:I

    return v0
.end method

.method static synthetic access$102(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    return p1
.end method

.method static synthetic access$1100(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    return v0
.end method

.method static synthetic access$1200(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->dropFloatView()V

    return-void
.end method

.method static synthetic access$1300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    return v0
.end method

.method static synthetic access$1400(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    return v0
.end method

.method static synthetic access$1500(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->destroyFloatView()V

    return-void
.end method

.method static synthetic access$1600(Lorg/omnirom/omniswitch/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doRemoveItem()V

    return-void
.end method

.method static synthetic access$1800(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    return v0
.end method

.method static synthetic access$1900(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mUpScrollStartYF:F

    return v0
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2000(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragUpScrollHeight:F

    return v0
.end method

.method static synthetic access$2100(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mScrollProfile:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDownScrollStartYF:F

    return v0
.end method

.method static synthetic access$2300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDownScrollHeight:F

    return v0
.end method

.method static synthetic access$2402(Lorg/omnirom/omniswitch/dslv/DragSortListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mBlockLayoutRequests:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/omnirom/omniswitch/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$2600(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getItemHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastY:I

    return v0
.end method

.method static synthetic access$2900(Lorg/omnirom/omniswitch/dslv/DragSortListView;II)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaY:I

    return v0
.end method

.method static synthetic access$302(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaY:I

    return p1
.end method

.method static synthetic access$400(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeightHalf:I

    return v0
.end method

.method static synthetic access$500(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mY:I

    return v0
.end method

.method static synthetic access$700(Lorg/omnirom/omniswitch/dslv/DragSortListView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doDragFloatView(Z)V

    return-void
.end method

.method static synthetic access$800(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    return v0
.end method

.method static synthetic access$900(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .prologue
    .line 61
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    return v0
.end method

.method private adjustAllItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1671
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1672
    .local v2, "first":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 1674
    .local v4, "last":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1675
    .local v0, "begin":I
    sub-int v6, v4, v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1677
    .local v1, "end":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-gt v3, v1, :cond_1

    .line 1678
    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1679
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1680
    add-int v6, v2, v3

    invoke-direct {p0, v6, v5, v9}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V

    .line 1677
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1683
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustItem(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1693
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->calcItemHeight(ILandroid/view/View;Z)I

    move-result v0

    .line 1694
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1696
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v4, :cond_0

    .line 1697
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1698
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1703
    :cond_0
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    if-eq p1, v4, :cond_1

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_2

    .line 1704
    :cond_1
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-ge p1, v4, :cond_5

    move-object v4, p2

    .line 1705
    check-cast v4, Lorg/omnirom/omniswitch/dslv/DragSortItemView;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lorg/omnirom/omniswitch/dslv/DragSortItemView;->setGravity(I)V

    .line 1714
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 1715
    .local v2, "oldVis":I
    const/4 v3, 0x0

    .line 1717
    .local v3, "vis":I
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 1718
    const/4 v3, 0x4

    .line 1721
    :cond_3
    if-eq v3, v2, :cond_4

    .line 1722
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1724
    :cond_4
    return-void

    .line 1706
    .end local v2    # "oldVis":I
    .end local v3    # "vis":I
    :cond_5
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v4, :cond_2

    move-object v4, p2

    .line 1707
    check-cast v4, Lorg/omnirom/omniswitch/dslv/DragSortItemView;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lorg/omnirom/omniswitch/dslv/DragSortItemView;->setGravity(I)V

    goto :goto_0
.end method

.method private adjustOnReorder()V
    .locals 5

    .prologue
    .line 1387
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1389
    .local v0, "firstPos":I
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-ge v3, v0, :cond_1

    .line 1392
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1393
    .local v2, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1394
    .local v1, "top":I
    if-eqz v2, :cond_0

    .line 1395
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1398
    :cond_0
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v1, v4

    invoke-virtual {p0, v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1400
    .end local v1    # "top":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private adjustScroll(ILandroid/view/View;II)I
    .locals 9
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "oldFirstExpPos"    # I
    .param p4, "oldSecondExpPos"    # I

    .prologue
    .line 1856
    const/4 v0, 0x0

    .line 1858
    .local v0, "adjust":I
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 1860
    .local v1, "childHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1861
    .local v6, "moveHeightBefore":I
    invoke-direct {p0, p1, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v5

    .line 1863
    .local v5, "moveHeightAfter":I
    move v4, v6

    .line 1864
    .local v4, "moveBlankBefore":I
    move v3, v5

    .line 1865
    .local v3, "moveBlankAfter":I
    iget v7, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-eq p1, v7, :cond_0

    .line 1866
    sub-int/2addr v4, v1

    .line 1867
    sub-int/2addr v3, v1

    .line 1870
    :cond_0
    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    .line 1871
    .local v2, "maxBlank":I
    iget v7, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v7, v8, :cond_1

    iget v7, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    iget v8, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v7, v8, :cond_1

    .line 1872
    iget v7, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int/2addr v2, v7

    .line 1875
    :cond_1
    if-gt p1, p3, :cond_3

    .line 1876
    iget v7, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    if-le p1, v7, :cond_2

    .line 1877
    sub-int v7, v2, v3

    add-int/2addr v0, v7

    .line 1895
    :cond_2
    :goto_0
    return v0

    .line 1879
    :cond_3
    if-ne p1, p4, :cond_6

    .line 1880
    iget v7, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_4

    .line 1881
    sub-int v7, v4, v2

    add-int/2addr v0, v7

    goto :goto_0

    .line 1882
    :cond_4
    iget v7, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_5

    .line 1883
    sub-int v7, v6, v5

    add-int/2addr v0, v7

    goto :goto_0

    .line 1885
    :cond_5
    add-int/2addr v0, v4

    goto :goto_0

    .line 1888
    :cond_6
    iget v7, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v7, :cond_7

    .line 1889
    sub-int/2addr v0, v2

    goto :goto_0

    .line 1890
    :cond_7
    iget v7, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v7, :cond_2

    .line 1891
    sub-int/2addr v0, v3

    goto :goto_0
.end method

.method private calcItemHeight(II)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "childHeight"    # I

    .prologue
    .line 1813
    iget-boolean v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mAnimate:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    .line 1814
    .local v1, "isSliding":Z
    :goto_0
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v2, v4, v5

    .line 1815
    .local v2, "maxNonSrcBlankHeight":I
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideFrac:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 1819
    .local v3, "slideHeight":I
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v4, :cond_4

    .line 1820
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    if-ne v4, v5, :cond_2

    .line 1821
    if-eqz v1, :cond_1

    .line 1822
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mItemHeightCollapsed:I

    add-int v0, v3, v4

    .line 1845
    .local v0, "height":I
    :goto_1
    return v0

    .line 1813
    .end local v0    # "height":I
    .end local v1    # "isSliding":Z
    .end local v2    # "maxNonSrcBlankHeight":I
    .end local v3    # "slideHeight":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1824
    .restart local v1    # "isSliding":Z
    .restart local v2    # "maxNonSrcBlankHeight":I
    .restart local v3    # "slideHeight":I
    :cond_1
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 1826
    .end local v0    # "height":I
    :cond_2
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-ne v4, v5, :cond_3

    .line 1828
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 1830
    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mItemHeightCollapsed:I

    .restart local v0    # "height":I
    goto :goto_1

    .line 1832
    .end local v0    # "height":I
    :cond_4
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    if-ne p1, v4, :cond_6

    .line 1833
    if-eqz v1, :cond_5

    .line 1834
    add-int v0, p2, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 1836
    .end local v0    # "height":I
    :cond_5
    add-int v0, p2, v2

    .restart local v0    # "height":I
    goto :goto_1

    .line 1838
    .end local v0    # "height":I
    :cond_6
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v4, :cond_7

    .line 1840
    add-int v4, p2, v2

    sub-int v0, v4, v3

    .restart local v0    # "height":I
    goto :goto_1

    .line 1842
    .end local v0    # "height":I
    :cond_7
    move v0, p2

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method private calcItemHeight(ILandroid/view/View;Z)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    .line 1808
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v0

    return v0
.end method

.method private clearPositions()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1326
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    .line 1327
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 1328
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    .line 1329
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    .line 1330
    return-void
.end method

.method private continueDrag(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 1610
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaX:I

    sub-int v4, p1, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1611
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaY:I

    sub-int v4, p2, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1613
    invoke-direct {p0, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doDragFloatView(Z)V

    .line 1615
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1616
    .local v2, "minY":I
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeightHalf:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1619
    .local v1, "maxY":I
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->getScrollDir()I

    move-result v0

    .line 1621
    .local v0, "currentScrollDir":I
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastY:I

    if-le v2, v3, :cond_2

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDownScrollStartY:I

    if-le v2, v3, :cond_2

    if-eq v0, v5, :cond_2

    .line 1624
    if-eq v0, v6, :cond_0

    .line 1626
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1630
    :cond_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    .line 1647
    :cond_1
    :goto_0
    return-void

    .line 1631
    :cond_2
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastY:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mUpScrollStartY:I

    if-ge v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 1634
    if-eq v0, v6, :cond_3

    .line 1636
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1640
    :cond_3
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->startScrolling(I)V

    goto :goto_0

    .line 1642
    :cond_4
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mUpScrollStartY:I

    if-lt v1, v3, :cond_1

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDownScrollStartY:I

    if-gt v2, v3, :cond_1

    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->isScrolling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1645
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    invoke-virtual {v3, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    goto :goto_0
.end method

.method private destroyFloatView()V
    .locals 2

    .prologue
    .line 2198
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2200
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    if-eqz v0, :cond_0

    .line 2201
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-interface {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;->onDestroyFloatView(Landroid/view/View;)V

    .line 2203
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2204
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->invalidate()V

    .line 2206
    :cond_1
    return-void
.end method

.method private doActionUpOrCancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1491
    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelMethod:I

    .line 1492
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1493
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1494
    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    .line 1496
    :cond_0
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatAlpha:F

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 1497
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mChildHeightCache:Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;->clear()V

    .line 1498
    return-void
.end method

.method private doDragFloatView(ILandroid/view/View;Z)V
    .locals 6
    .param p1, "movePos"    # I
    .param p2, "moveItem"    # Landroid/view/View;
    .param p3, "forceInvalidate"    # Z

    .prologue
    .line 2108
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2110
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->updateFloatView()V

    .line 2112
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 2113
    .local v0, "oldFirstExpPos":I
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    .line 2115
    .local v1, "oldSecondExpPos":I
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->updatePositions()Z

    move-result v3

    .line 2117
    .local v3, "updated":Z
    if-eqz v3, :cond_0

    .line 2118
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->adjustAllItems()V

    .line 2119
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->adjustScroll(ILandroid/view/View;II)I

    move-result v2

    .line 2122
    .local v2, "scroll":I
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, p1, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2123
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->layoutChildren()V

    .line 2126
    .end local v2    # "scroll":I
    :cond_0
    if-nez v3, :cond_1

    if-eqz p3, :cond_2

    .line 2127
    :cond_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->invalidate()V

    .line 2130
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mBlockLayoutRequests:Z

    .line 2131
    return-void
.end method

.method private doDragFloatView(Z)V
    .locals 4
    .param p1, "forceInvalidate"    # Z

    .prologue
    .line 2097
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 2098
    .local v1, "movePos":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2100
    .local v0, "moveItem":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2105
    :goto_0
    return-void

    .line 2104
    :cond_0
    invoke-direct {p0, v1, v0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method private doRemoveItem()V
    .locals 2

    .prologue
    .line 1357
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doRemoveItem(I)V

    .line 1358
    return-void
.end method

.method private doRemoveItem(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1366
    const/4 v0, 0x1

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    .line 1369
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mRemoveListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mRemoveListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;

    invoke-interface {v0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;->remove(I)V

    .line 1373
    :cond_0
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->destroyFloatView()V

    .line 1375
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->adjustOnReorder()V

    .line 1376
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->clearPositions()V

    .line 1379
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1380
    const/4 v0, 0x3

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    .line 1384
    :goto_0
    return-void

    .line 1382
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private drawDivider(ILandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "expPosition"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 662
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 663
    .local v2, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 666
    .local v3, "dividerHeight":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 667
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, p1, v8

    invoke-virtual {p0, v8}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 668
    .local v4, "expItem":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 669
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingLeft()I

    move-result v5

    .line 670
    .local v5, "l":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingRight()I

    move-result v9

    sub-int v6, v8, v9

    .line 674
    .local v6, "r":I
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 676
    .local v1, "childHeight":I
    iget v8, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v8, :cond_1

    .line 677
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v8

    add-int v7, v8, v1

    .line 678
    .local v7, "t":I
    add-int v0, v7, v3

    .line 686
    .local v0, "b":I
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 687
    invoke-virtual {p2, v5, v7, v6, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 688
    invoke-virtual {v2, v5, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 689
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 690
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 693
    .end local v0    # "b":I
    .end local v1    # "childHeight":I
    .end local v4    # "expItem":Landroid/view/ViewGroup;
    .end local v5    # "l":I
    .end local v6    # "r":I
    .end local v7    # "t":I
    :cond_0
    return-void

    .line 680
    .restart local v1    # "childHeight":I
    .restart local v4    # "expItem":Landroid/view/ViewGroup;
    .restart local v5    # "l":I
    .restart local v6    # "r":I
    :cond_1
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v8

    sub-int v0, v8, v1

    .line 681
    .restart local v0    # "b":I
    sub-int v7, v0, v3

    .restart local v7    # "t":I
    goto :goto_0
.end method

.method private dropFloatView()V
    .locals 4

    .prologue
    .line 1335
    const/4 v1, 0x2

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    .line 1337
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDropListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1338
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1339
    .local v0, "numHeaders":I
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDropListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    sub-int/2addr v3, v0

    invoke-interface {v1, v2, v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;->drop(II)V

    .line 1342
    .end local v0    # "numHeaders":I
    :cond_0
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->destroyFloatView()V

    .line 1344
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->adjustOnReorder()V

    .line 1345
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->clearPositions()V

    .line 1346
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->adjustAllItems()V

    .line 1349
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_1

    .line 1350
    const/4 v1, 0x3

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    .line 1354
    :goto_0
    return-void

    .line 1352
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method private getChildHeight(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1727
    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v5, :cond_1

    .line 1773
    :cond_0
    :goto_0
    return v1

    .line 1731
    :cond_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1733
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 1736
    invoke-direct {p0, p1, v4, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    goto :goto_0

    .line 1740
    :cond_2
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mChildHeightCache:Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;->get(I)I

    move-result v1

    .line 1741
    .local v1, "childHeight":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 1746
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1747
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 1750
    .local v2, "type":I
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    .line 1751
    .local v3, "typeCount":I
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    array-length v5, v5

    if-eq v3, v5, :cond_3

    .line 1752
    new-array v5, v3, [Landroid/view/View;

    iput-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    .line 1755
    :cond_3
    if-ltz v2, :cond_5

    .line 1756
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    if-nez v5, :cond_4

    .line 1757
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1758
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aput-object v4, v5, v2

    .line 1768
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I

    move-result v1

    .line 1771
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mChildHeightCache:Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;

    invoke-virtual {v5, p1, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$HeightCache;->add(II)V

    goto :goto_0

    .line 1760
    :cond_4
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSampleViewTypes:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-interface {v0, p1, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 1764
    :cond_5
    invoke-interface {v0, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1
.end method

.method private getChildHeight(ILandroid/view/View;Z)I
    .locals 5
    .param p1, "position"    # I
    .param p2, "item"    # Landroid/view/View;
    .param p3, "invalidChildHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1778
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v3, :cond_1

    .line 1804
    .end local p2    # "item":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 1783
    .restart local p2    # "item":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 1784
    :cond_2
    move-object v0, p2

    .line 1789
    .end local p2    # "item":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1791
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_4

    .line 1792
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 1793
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1786
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "item":Landroid/view/View;
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2    # "item":Landroid/view/View;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "child":Landroid/view/View;
    goto :goto_1

    .line 1797
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1799
    .local v1, "childHeight":I
    if-eqz v1, :cond_5

    if-eqz p3, :cond_0

    .line 1800
    :cond_5
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1801
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getItemHeight(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 729
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 731
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 737
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->calcItemHeight(II)I

    move-result v1

    goto :goto_0
.end method

.method private getShuffleEdge(II)I
    .locals 11
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 806
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v7

    .line 807
    .local v7, "numHeaders":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 813
    .local v6, "numFooters":I
    if-le p1, v7, :cond_0

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v6

    if-lt p1, v9, :cond_1

    :cond_0
    move v3, p2

    .line 860
    :goto_0
    return v3

    .line 817
    :cond_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getDividerHeight()I

    move-result v2

    .line 821
    .local v2, "divHeight":I
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    iget v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mItemHeightCollapsed:I

    sub-int v5, v9, v10

    .line 822
    .local v5, "maxBlankHeight":I
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(I)I

    move-result v1

    .line 823
    .local v1, "childHeight":I
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getItemHeight(I)I

    move-result v4

    .line 827
    .local v4, "itemHeight":I
    move v8, p2

    .line 828
    .local v8, "otop":I
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    iget v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-gt v9, v10, :cond_5

    .line 831
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_4

    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_4

    .line 832
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-ne p1, v9, :cond_3

    .line 833
    add-int v9, p2, v4

    iget v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v8, v9, v10

    .line 854
    :cond_2
    :goto_1
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_7

    .line 855
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v2

    add-int/lit8 v10, p1, -0x1

    invoke-direct {p0, v10}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(I)I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .local v3, "edge":I
    goto :goto_0

    .line 835
    .end local v3    # "edge":I
    :cond_3
    sub-int v0, v4, v1

    .line 836
    .local v0, "blankHeight":I
    add-int v9, p2, v0

    sub-int v8, v9, v5

    .line 837
    goto :goto_1

    .line 838
    .end local v0    # "blankHeight":I
    :cond_4
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-le p1, v9, :cond_2

    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-gt p1, v9, :cond_2

    .line 839
    sub-int v8, p2, v5

    goto :goto_1

    .line 845
    :cond_5
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-le p1, v9, :cond_6

    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    if-gt p1, v9, :cond_6

    .line 846
    add-int v8, p2, v5

    goto :goto_1

    .line 847
    :cond_6
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-ne p1, v9, :cond_2

    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    iget v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    if-eq v9, v10, :cond_2

    .line 848
    sub-int v0, v4, v1

    .line 849
    .restart local v0    # "blankHeight":I
    add-int v8, p2, v0

    goto :goto_1

    .line 857
    .end local v0    # "blankHeight":I
    :cond_7
    sub-int v9, v1, v2

    iget v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .restart local v3    # "edge":I
    goto :goto_0
.end method

.method private measureFloatView()V
    .locals 1

    .prologue
    .line 1914
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1915
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->measureItem(Landroid/view/View;)V

    .line 1916
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    .line 1917
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeightHalf:I

    .line 1919
    :cond_0
    return-void
.end method

.method private measureItem(Landroid/view/View;)V
    .locals 7
    .param p1, "item"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 1899
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1900
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1901
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1903
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mWidthMeasureSpec:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getListPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1905
    .local v2, "wspec":I
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 1906
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1910
    .local v0, "hspec":I
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1911
    return-void

    .line 1908
    .end local v0    # "hspec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "hspec":I
    goto :goto_0
.end method

.method private saveTouchCoords(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 1502
    .local v0, "action":I
    if-eqz v0, :cond_0

    .line 1503
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mY:I

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastY:I

    .line 1505
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mX:I

    .line 1506
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mY:I

    .line 1507
    if-nez v0, :cond_1

    .line 1508
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mY:I

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastY:I

    .line 1510
    :cond_1
    return-void
.end method

.method private updateFloatView()V
    .locals 13

    .prologue
    .line 2139
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    if-eqz v9, :cond_0

    .line 2140
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    iget v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mX:I

    iget v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mY:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    .line 2141
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    iget-object v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget-object v12, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mTouchLoc:Landroid/graphics/Point;

    invoke-interface {v9, v10, v11, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;->onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2144
    :cond_0
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v9, Landroid/graphics/Point;->x:I

    .line 2145
    .local v2, "floatX":I
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v3, v9, Landroid/graphics/Point;->y:I

    .line 2148
    .local v3, "floatY":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingLeft()I

    move-result v7

    .line 2149
    .local v7, "padLeft":I
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_7

    if-le v2, v7, :cond_7

    .line 2150
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    .line 2156
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v6

    .line 2157
    .local v6, "numHeaders":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v5

    .line 2158
    .local v5, "numFooters":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2159
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v4

    .line 2162
    .local v4, "lastPos":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2163
    .local v8, "topLimit":I
    if-ge v1, v6, :cond_2

    .line 2164
    sub-int v9, v6, v1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 2166
    :cond_2
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_3

    .line 2167
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-gt v1, v9, :cond_3

    .line 2168
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2173
    :cond_3
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingBottom()I

    move-result v10

    sub-int v0, v9, v10

    .line 2174
    .local v0, "bottomLimit":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    if-lt v4, v9, :cond_4

    .line 2175
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v9

    sub-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2177
    :cond_4
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_5

    .line 2178
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-lt v4, v9, :cond_5

    .line 2179
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    sub-int/2addr v9, v1

    invoke-virtual {p0, v9}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2187
    :cond_5
    if-ge v3, v8, :cond_8

    .line 2188
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v8, v9, Landroid/graphics/Point;->y:I

    .line 2194
    :cond_6
    :goto_1
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeightHalf:I

    add-int/2addr v9, v10

    iput v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    .line 2195
    return-void

    .line 2151
    .end local v0    # "bottomLimit":I
    .end local v1    # "firstPos":I
    .end local v4    # "lastPos":I
    .end local v5    # "numFooters":I
    .end local v6    # "numHeaders":I
    .end local v8    # "topLimit":I
    :cond_7
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragFlags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    if-ge v2, v7, :cond_1

    .line 2152
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iput v7, v9, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2189
    .restart local v0    # "bottomLimit":I
    .restart local v1    # "firstPos":I
    .restart local v4    # "lastPos":I
    .restart local v5    # "numFooters":I
    .restart local v6    # "numHeaders":I
    .restart local v8    # "topLimit":I
    :cond_8
    iget v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    add-int/2addr v9, v3

    if-le v9, v0, :cond_6

    .line 2190
    iget-object v9, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v10, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I

    sub-int v10, v0, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private updatePositions()Z
    .locals 30

    .prologue
    .line 865
    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v9

    .line 866
    .local v9, "first":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v23, v0

    .line 867
    .local v23, "startPos":I
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 869
    .local v25, "startView":Landroid/view/View;
    if-nez v25, :cond_0

    .line 870
    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildCount()I

    move-result v27

    div-int/lit8 v27, v27, 0x2

    add-int v23, v9, v27

    .line 871
    sub-int v27, v23, v9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 873
    :cond_0
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v24

    .line 875
    .local v24, "startTop":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 877
    .local v10, "itemHeight":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 878
    .local v5, "edge":I
    move v13, v5

    .line 880
    .local v13, "lastEdge":I
    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getDividerHeight()I

    move-result v4

    .line 884
    .local v4, "divHeight":I
    move/from16 v11, v23

    .line 885
    .local v11, "itemPos":I
    move/from16 v12, v24

    .line 886
    .local v12, "itemTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_8

    .line 889
    :goto_0
    if-ltz v11, :cond_1

    .line 890
    add-int/lit8 v11, v11, -0x1

    .line 891
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 893
    if-nez v11, :cond_7

    .line 894
    sub-int v27, v12, v4

    sub-int v5, v27, v10

    .line 933
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v15

    .line 934
    .local v15, "numHeaders":I
    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v14

    .line 936
    .local v14, "numFooters":I
    const/16 v26, 0x0

    .line 938
    .local v26, "updated":Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v16, v0

    .line 939
    .local v16, "oldFirstExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v17, v0

    .line 940
    .local v17, "oldSecondExpPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v18, v0

    .line 942
    .local v18, "oldSlideFrac":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mAnimate:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 943
    sub-int v27, v5, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 946
    .local v7, "edgeToEdge":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_a

    .line 947
    move v6, v5

    .line 948
    .local v6, "edgeBottom":I
    move v8, v13

    .line 955
    .local v8, "edgeTop":I
    :goto_2
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideRegionFrac:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v7

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v21, v0

    .line 956
    .local v21, "slideRgnHeight":I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    .line 957
    .local v22, "slideRgnHeightF":F
    add-int v20, v8, v21

    .line 958
    .local v20, "slideEdgeTop":I
    sub-int v19, v6, v21

    .line 961
    .local v19, "slideEdgeBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 962
    add-int/lit8 v27, v11, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 963
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    .line 964
    const/high16 v27, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v28, v0

    sub-int v28, v20, v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    div-float v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideFrac:F

    .line 982
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 983
    move v11, v15

    .line 984
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 985
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    .line 992
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideFrac:F

    move/from16 v27, v0

    cmpl-float v27, v27, v18

    if-eqz v27, :cond_4

    .line 993
    :cond_3
    const/16 v26, 0x1

    .line 996
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v11, v0, :cond_6

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    move/from16 v28, v0

    sub-int v28, v28, v15

    sub-int v29, v11, v15

    invoke-interface/range {v27 .. v29}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;->drag(II)V

    .line 1001
    :cond_5
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    .line 1002
    const/16 v26, 0x1

    .line 1005
    :cond_6
    return v26

    .line 898
    .end local v14    # "numFooters":I
    .end local v15    # "numHeaders":I
    .end local v16    # "oldFirstExpPos":I
    .end local v17    # "oldSecondExpPos":I
    .end local v18    # "oldSlideFrac":F
    .end local v26    # "updated":Z
    :cond_7
    add-int v27, v10, v4

    sub-int v12, v12, v27

    .line 899
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 902
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v5, :cond_1

    .line 906
    move v13, v5

    goto/16 :goto_0

    .line 911
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 912
    .local v3, "count":I
    :goto_5
    if-ge v11, v3, :cond_1

    .line 913
    add-int/lit8 v27, v3, -0x1

    move/from16 v0, v27

    if-ne v11, v0, :cond_9

    .line 914
    add-int v27, v12, v4

    add-int v5, v27, v10

    .line 915
    goto/16 :goto_1

    .line 918
    :cond_9
    add-int v27, v4, v10

    add-int v12, v12, v27

    .line 919
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getItemHeight(I)I

    move-result v10

    .line 920
    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getShuffleEdge(II)I

    move-result v5

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v5, :cond_1

    .line 928
    move v13, v5

    .line 929
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 950
    .end local v3    # "count":I
    .restart local v7    # "edgeToEdge":I
    .restart local v14    # "numFooters":I
    .restart local v15    # "numHeaders":I
    .restart local v16    # "oldFirstExpPos":I
    .restart local v17    # "oldSecondExpPos":I
    .restart local v18    # "oldSlideFrac":F
    .restart local v26    # "updated":Z
    :cond_a
    move v8, v5

    .line 951
    .restart local v8    # "edgeTop":I
    move v6, v13

    .restart local v6    # "edgeBottom":I
    goto/16 :goto_2

    .line 966
    .restart local v19    # "slideEdgeBottom":I
    .restart local v20    # "slideEdgeTop":I
    .restart local v21    # "slideRgnHeight":I
    .restart local v22    # "slideRgnHeightF":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 967
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 968
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 970
    :cond_c
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 971
    add-int/lit8 v27, v11, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    .line 972
    const/high16 v27, 0x3f000000    # 0.5f

    const/high16 v28, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I

    move/from16 v29, v0

    sub-int v29, v6, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v29, v29, v22

    add-float v28, v28, v29

    mul-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSlideFrac:F

    goto/16 :goto_3

    .line 977
    .end local v6    # "edgeBottom":I
    .end local v7    # "edgeToEdge":I
    .end local v8    # "edgeTop":I
    .end local v19    # "slideEdgeBottom":I
    .end local v20    # "slideEdgeTop":I
    .end local v21    # "slideRgnHeight":I
    .end local v22    # "slideRgnHeightF":F
    :cond_d
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 978
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_3

    .line 986
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v28

    sub-int v28, v28, v14

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 987
    invoke-virtual/range {p0 .. p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v27

    sub-int v27, v27, v14

    add-int/lit8 v11, v27, -0x1

    .line 988
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 989
    move-object/from16 v0, p0

    iput v11, v0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    goto/16 :goto_4
.end method

.method private updateScrollStarts()V
    .locals 6

    .prologue
    .line 1650
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 1651
    .local v2, "padTop":I
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 1652
    .local v1, "listHeight":I
    int-to-float v0, v1

    .line 1654
    .local v0, "heightF":F
    int-to-float v3, v2

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mUpScrollStartYF:F

    .line 1655
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDownScrollStartYF:F

    .line 1657
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mUpScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mUpScrollStartY:I

    .line 1658
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDownScrollStartYF:F

    float-to-int v3, v3

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDownScrollStartY:I

    .line 1660
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mUpScrollStartYF:F

    int-to-float v4, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragUpScrollHeight:F

    .line 1661
    add-int v3, v2, v1

    int-to-float v3, v3

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDownScrollStartYF:F

    sub-float/2addr v3, v4

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDownScrollHeight:F

    .line 1662
    return-void
.end method


# virtual methods
.method public cancelDrag()V
    .locals 2

    .prologue
    .line 1311
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1312
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1313
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->destroyFloatView()V

    .line 1314
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->clearPositions()V

    .line 1315
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->adjustAllItems()V

    .line 1317
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v0, :cond_1

    .line 1318
    const/4 v0, 0x3

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 697
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 699
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    if-eqz v0, :cond_1

    .line 701
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_0

    .line 702
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    invoke-direct {p0, v0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 704
    :cond_0
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    if-eq v0, v2, :cond_1

    .line 705
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    invoke-direct {p0, v0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->drawDivider(ILandroid/graphics/Canvas;)V

    .line 709
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 711
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 712
    .local v8, "w":I
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 713
    .local v7, "h":I
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCurrFloatAlpha:F

    mul-float/2addr v0, v2

    float-to-int v5, v0

    .line 715
    .local v5, "alpha":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 717
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 718
    invoke-virtual {p1, v3, v3, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 721
    int-to-float v3, v8

    int-to-float v4, v7

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 722
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 723
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 724
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 726
    .end local v5    # "alpha":I
    .end local v7    # "h":I
    .end local v8    # "w":I
    :cond_2
    return-void
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCurrFloatAlpha:F

    return v0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1936
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 1938
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1939
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    if-nez v0, :cond_0

    .line 1943
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->measureFloatView()V

    .line 1945
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1946
    iput-boolean v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 1948
    :cond_1
    return-void
.end method

.method protected onDragTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x4

    .line 1953
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1972
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1955
    :pswitch_0
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    if-ne v0, v1, :cond_0

    .line 1956
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->cancelDrag()V

    .line 1958
    :cond_0
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1962
    :pswitch_1
    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    if-ne v0, v1, :cond_1

    .line 1963
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->stopDrag(Z)Z

    .line 1965
    :cond_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1968
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->continueDrag(II)V

    goto :goto_0

    .line 1953
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1010
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1012
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragSortTracker:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->appendState()V

    .line 1015
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 1515
    iget-boolean v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v3, :cond_1

    .line 1516
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1562
    :cond_0
    :goto_0
    return v1

    .line 1519
    :cond_1
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1520
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1524
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 1525
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    if-eqz v3, :cond_2

    .line 1527
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v1, v2

    .line 1528
    goto :goto_0

    .line 1530
    :cond_2
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    .line 1533
    :cond_3
    const/4 v1, 0x0

    .line 1536
    .local v1, "intercept":Z
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1538
    const/4 v1, 0x1

    .line 1558
    :goto_1
    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1559
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    goto :goto_0

    .line 1540
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1541
    const/4 v1, 0x1

    .line 1544
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 1550
    :pswitch_0
    if-eqz v1, :cond_7

    .line 1551
    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1547
    :pswitch_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_1

    .line 1553
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_1

    .line 1544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1923
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 1925
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1926
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->measureFloatView()V

    .line 1929
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewOnMeasured:Z

    .line 1931
    :cond_1
    iput p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mWidthMeasureSpec:I

    .line 1932
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1666
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1667
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->updateScrollStarts()V

    .line 1668
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1440
    iget-boolean v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    if-eqz v4, :cond_1

    .line 1441
    iput-boolean v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mIgnoreTouchEvent:Z

    move v2, v3

    .line 1487
    :cond_0
    :goto_0
    return v2

    .line 1445
    :cond_1
    iget-boolean v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragEnabled:Z

    if-nez v4, :cond_2

    .line 1446
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 1449
    :cond_2
    const/4 v2, 0x0

    .line 1451
    .local v2, "more":Z
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1452
    .local v1, "lastCallWasIntercept":Z
    iput-boolean v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastCallWasIntercept:Z

    .line 1454
    if-nez v1, :cond_3

    .line 1455
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->saveTouchCoords(Landroid/view/MotionEvent;)V

    .line 1459
    :cond_3
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1460
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->onDragTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1461
    const/4 v2, 0x1

    goto :goto_0

    .line 1467
    :cond_4
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    if-nez v3, :cond_5

    .line 1468
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1469
    const/4 v2, 0x1

    .line 1473
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 1475
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1481
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1482
    const/4 v3, 0x1

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelMethod:I

    goto :goto_0

    .line 1478
    :pswitch_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doActionUpOrCancel()V

    goto :goto_0

    .line 1475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeItem(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x4

    .line 1255
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    if-ne v1, v3, :cond_3

    .line 1256
    :cond_0
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    if-nez v1, :cond_1

    .line 1258
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    .line 1259
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 1260
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    .line 1261
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    .line 1262
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1263
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1264
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_2

    .line 1269
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v1, :pswitch_data_0

    .line 1279
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mRemoveAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;

    if-eqz v1, :cond_4

    .line 1280
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mRemoveAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->start()V

    .line 1285
    :cond_3
    :goto_1
    return-void

    .line 1271
    :pswitch_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1274
    :pswitch_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1282
    :cond_4
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->doRemoveItem(I)V

    goto :goto_1

    .line 1269
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1850
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 1851
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 1853
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 61
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 580
    new-instance v0, Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;

    invoke-direct {v0, p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mAdapterWrapper:Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;

    .line 582
    if-eqz p1, :cond_2

    .line 583
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 585
    instance-of v0, p1, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 586
    check-cast v0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setDropListener(Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;)V

    .line 588
    :cond_0
    instance-of v0, p1, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 589
    check-cast v0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setDragListener(Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;)V

    .line 591
    :cond_1
    instance-of v0, p1, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;

    if-eqz v0, :cond_2

    .line 592
    check-cast p1, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setRemoveListener(Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;)V

    .line 596
    :cond_2
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mAdapterWrapper:Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 597
    return-void
.end method

.method public setDragListener(Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;)V
    .locals 0
    .param p1, "l"    # Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;

    .prologue
    .line 2266
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragListener;

    .line 2267
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .param p1, "heightFraction"    # F

    .prologue
    .line 1575
    invoke-virtual {p0, p1, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setDragScrollStarts(FF)V

    .line 1576
    return-void
.end method

.method public setDragScrollStarts(FF)V
    .locals 2
    .param p1, "upperFrac"    # F
    .param p2, "lowerFrac"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1590
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1591
    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    .line 1596
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1597
    iput v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    .line 1602
    :goto_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->updateScrollStarts()V

    .line 1605
    :cond_0
    return-void

    .line 1593
    :cond_1
    iput p2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDownScrollStartFrac:F

    goto :goto_0

    .line 1599
    :cond_2
    iput p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragUpScrollStartFrac:F

    goto :goto_1
.end method

.method public setDropListener(Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;)V
    .locals 0
    .param p1, "l"    # Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;

    .prologue
    .line 2296
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDropListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;

    .line 2297
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 551
    iput p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCurrFloatAlpha:F

    .line 552
    return-void
.end method

.method public setFloatViewManager(Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    .prologue
    .line 2262
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    .line 2263
    return-void
.end method

.method public setRemoveListener(Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;

    .prologue
    .line 2310
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mRemoveListener:Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;

    .line 2311
    return-void
.end method

.method public startDrag(IIII)Z
    .locals 6
    .param p1, "position"    # I
    .param p2, "dragFlags"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I

    .prologue
    const/4 v0, 0x0

    .line 1999
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    if-nez v1, :cond_1

    .line 2008
    :cond_0
    :goto_0
    return v0

    .line 2003
    :cond_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewManager:Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;

    invoke-interface {v1, p1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;->onCreateFloatView(I)Landroid/view/View;

    move-result-object v2

    .line 2005
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2008
    invoke-virtual/range {v0 .. v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->startDrag(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public startDrag(ILandroid/view/View;III)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "floatView"    # Landroid/view/View;
    .param p3, "dragFlags"    # I
    .param p4, "deltaX"    # I
    .param p5, "deltaY"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2036
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mInTouchEvent:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-nez v4, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v2, v3

    .line 2093
    :cond_1
    :goto_0
    return v2

    .line 2040
    :cond_2
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2041
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2044
    :cond_3
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int v0, p1, v4

    .line 2045
    .local v0, "pos":I
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I

    .line 2046
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I

    .line 2047
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    .line 2048
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I

    .line 2051
    iput v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I

    .line 2052
    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragFlags:I

    .line 2053
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragFlags:I

    or-int/2addr v3, p3

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragFlags:I

    .line 2055
    iput-object p2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    .line 2056
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->measureFloatView()V

    .line 2058
    iput p4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaX:I

    .line 2059
    iput p5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaY:I

    .line 2062
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mX:I

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaX:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 2063
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mY:I

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaY:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 2066
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2068
    .local v1, "srcItem":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 2069
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2072
    :cond_4
    iget-boolean v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v3, :cond_5

    .line 2073
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragSortTracker:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->startTracking()V

    .line 2078
    :cond_5
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelMethod:I

    packed-switch v3, :pswitch_data_0

    .line 2087
    :goto_1
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->requestLayout()V

    .line 2089
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLiftAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;

    if-eqz v3, :cond_1

    .line 2090
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLiftAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->start()V

    goto :goto_0

    .line 2080
    :pswitch_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2083
    :pswitch_1
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v3}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopDrag(Z)Z
    .locals 3
    .param p1, "remove"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1414
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1415
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragScroller:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;

    invoke-virtual {v1, v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->stopScrolling(Z)V

    .line 1417
    if-eqz p1, :cond_1

    .line 1418
    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->removeItem(I)V

    .line 1427
    :goto_0
    iget-boolean v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mTrackDragSort:Z

    if-eqz v1, :cond_0

    .line 1428
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragSortTracker:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->stopTracking()V

    .line 1434
    :cond_0
    :goto_1
    return v0

    .line 1420
    :cond_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDropAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;

    if-eqz v1, :cond_2

    .line 1421
    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDropAnimator:Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->start()V

    goto :goto_0

    .line 1423
    :cond_2
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->dropFloatView()V

    goto :goto_0

    .line 1434
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
