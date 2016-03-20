.class Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragScroller"
.end annotation


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V
    .locals 1

    .prologue
    .line 2414
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2414
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2411
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2407
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 2442
    iget-boolean v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v11, :cond_0

    .line 2443
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2525
    :goto_0
    return-void

    .line 2449
    :cond_0
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2450
    .local v1, "first":I
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 2451
    .local v2, "last":I
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getCount()I

    move-result v0

    .line 2452
    .local v0, "count":I
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingTop()I

    move-result v8

    .line 2453
    .local v8, "padTop":I
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeight()I

    move-result v11

    sub-int/2addr v11, v8

    iget-object v12, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingBottom()I

    move-result v12

    sub-int v3, v11, v12

    .line 2455
    .local v3, "listHeight":I
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mY:I
    invoke-static {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$600(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v11

    iget-object v12, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I
    invoke-static {v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1800(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v12

    iget-object v13, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v13}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$400(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2456
    .local v5, "minY":I
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mY:I
    invoke-static {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$600(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v11

    iget-object v12, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I
    invoke-static {v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1800(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v12

    iget-object v13, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v13}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$400(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2458
    .local v4, "maxY":I
    iget v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->scrollDir:I

    if-nez v11, :cond_4

    .line 2459
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2461
    .local v10, "v":Landroid/view/View;
    if-nez v10, :cond_1

    .line 2462
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 2465
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    if-ne v11, v8, :cond_2

    .line 2466
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 2470
    :cond_2
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mScrollProfile:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;
    invoke-static {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2100(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;

    move-result-object v11

    iget-object v12, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mUpScrollStartYF:F
    invoke-static {v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1900(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F

    move-result v12

    int-to-float v13, v4

    sub-float/2addr v12, v13

    iget-object v13, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragUpScrollHeight:F
    invoke-static {v13}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2000(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F

    move-result v13

    div-float/2addr v12, v13

    iget-wide v13, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mPrevTime:J

    invoke-interface {v11, v12, v13, v14}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v11

    iput v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2485
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mCurrTime:J

    .line 2486
    iget-wide v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iget-wide v13, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mPrevTime:J

    sub-long/2addr v11, v13

    long-to-float v11, v11

    iput v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->dt:F

    .line 2491
    iget v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    iget v12, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iput v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->dy:I

    .line 2494
    iget v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->dy:I

    if-ltz v11, :cond_7

    .line 2495
    iget v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->dy:I

    .line 2496
    move v7, v1

    .line 2502
    .local v7, "movePos":I
    :goto_2
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    sub-int v12, v7, v1

    invoke-virtual {v11, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2503
    .local v6, "moveItem":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    iget v12, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->dy:I

    add-int v9, v11, v12

    .line 2505
    .local v9, "top":I
    if-nez v7, :cond_3

    if-le v9, v8, :cond_3

    .line 2506
    move v9, v8

    .line 2510
    :cond_3
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    const/4 v12, 0x1

    # setter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v11, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2402(Lorg/omnirom/omniswitch/dslv/DragSortListView;Z)Z

    .line 2512
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    sub-int v12, v9, v8

    invoke-virtual {v11, v7, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2513
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->layoutChildren()V

    .line 2514
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->invalidate()V

    .line 2516
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    const/4 v12, 0x0

    # setter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mBlockLayoutRequests:Z
    invoke-static {v11, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2402(Lorg/omnirom/omniswitch/dslv/DragSortListView;Z)Z

    .line 2519
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    const/4 v12, 0x0

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->doDragFloatView(ILandroid/view/View;Z)V
    invoke-static {v11, v7, v6, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2500(Lorg/omnirom/omniswitch/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 2521
    iget-wide v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mCurrTime:J

    iput-wide v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2524
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v11, p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2472
    .end local v6    # "moveItem":Landroid/view/View;
    .end local v7    # "movePos":I
    .end local v9    # "top":I
    .end local v10    # "v":Landroid/view/View;
    :cond_4
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    sub-int v12, v2, v1

    invoke-virtual {v11, v12}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2473
    .restart local v10    # "v":Landroid/view/View;
    if-nez v10, :cond_5

    .line 2474
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2477
    :cond_5
    add-int/lit8 v11, v0, -0x1

    if-ne v2, v11, :cond_6

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int v12, v3, v8

    if-gt v11, v12, :cond_6

    .line 2478
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2482
    :cond_6
    iget-object v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mScrollProfile:Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;
    invoke-static {v11}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2100(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;

    move-result-object v11

    int-to-float v12, v5

    iget-object v13, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDownScrollStartYF:F
    invoke-static {v13}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2200(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F

    move-result v13

    sub-float/2addr v12, v13

    iget-object v13, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDownScrollHeight:F
    invoke-static {v13}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F

    move-result v13

    div-float/2addr v12, v13

    iget-wide v13, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mPrevTime:J

    invoke-interface {v11, v12, v13, v14}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v11

    neg-float v11, v11

    iput v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    .line 2498
    :cond_7
    neg-int v11, v3

    iget v12, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->dy:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->dy:I

    .line 2499
    move v7, v2

    .restart local v7    # "movePos":I
    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2
    .param p1, "dir"    # I

    .prologue
    .line 2417
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mAbort:Z

    .line 2420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->tStart:J

    .line 2422
    iget-wide v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mPrevTime:J

    .line 2423
    iput p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->scrollDir:I

    .line 2424
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2426
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1
    .param p1, "now"    # Z

    .prologue
    .line 2429
    if-eqz p1, :cond_0

    .line 2430
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mScrolling:Z

    .line 2437
    :goto_0
    return-void

    .line 2433
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
