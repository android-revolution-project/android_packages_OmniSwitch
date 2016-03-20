.class Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortTracker"
.end annotation


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2538
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    .line 2533
    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2534
    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2536
    iput-boolean v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2539
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 2540
    .local v1, "root":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "dslv_state.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    .line 2542
    iget-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2544
    :try_start_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 2545
    const-string v2, "mobeta"

    const-string v3, "file created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2552
    :cond_0
    :goto_0
    return-void

    .line 2546
    :catch_0
    move-exception v0

    .line 2547
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "mobeta"

    const-string v3, "Could not create dslv_state.txt"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    const-string v2, "mobeta"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public appendState()V
    .locals 7

    .prologue
    .line 2561
    iget-boolean v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v3, :cond_1

    .line 2611
    :cond_0
    :goto_0
    return-void

    .line 2565
    :cond_1
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "<DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2566
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildCount()I

    move-result v0

    .line 2567
    .local v0, "children":I
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2568
    .local v1, "first":I
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Positions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2570
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2569
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2572
    :cond_2
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Positions>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2574
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Tops>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 2576
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v4, v2}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2578
    :cond_3
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Tops>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2579
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Bottoms>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 2581
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v4, v2}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2583
    :cond_4
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Bottoms>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2585
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2586
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I
    invoke-static {v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v5

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->getItemHeight(I)I
    invoke-static {v4, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2600(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget-object v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I
    invoke-static {v6}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v6

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(I)I
    invoke-static {v5, v6}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2700(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpBlankHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2589
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1400(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2590
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I
    invoke-static {v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1400(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v5

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->getItemHeight(I)I
    invoke-static {v4, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2600(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget-object v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I
    invoke-static {v6}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1400(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v6

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(I)I
    invoke-static {v5, v6}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2700(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpBlankHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2593
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$900(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1100(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2595
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ViewHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</ViewHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2596
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <LastY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mLastY:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2800(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</LastY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2597
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FloatY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewMid:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1800(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FloatY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ShuffleEdges>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 2600
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    add-int v5, v1, v2

    iget-object v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v6, v2}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->getShuffleEdge(II)I
    invoke-static {v4, v5, v6}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$2900(Lorg/omnirom/omniswitch/dslv/DragSortListView;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2602
    :cond_5
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</ShuffleEdges>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2604
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2605
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2607
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_0

    .line 2608
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->flush()V

    .line 2609
    const/4 v3, 0x0

    iput v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumInBuffer:I

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 2614
    iget-boolean v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v2, :cond_0

    .line 2636
    :goto_0
    return-void

    .line 2620
    :cond_0
    const/4 v0, 0x1

    .line 2621
    .local v0, "append":Z
    :try_start_0
    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    if-nez v2, :cond_1

    .line 2622
    const/4 v0, 0x0

    .line 2624
    :cond_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 2626
    .local v1, "writer":Ljava/io/FileWriter;
    iget-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2627
    iget-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2629
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 2630
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 2632
    iget v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2633
    .end local v1    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 2555
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    const/4 v0, 0x0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2558
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 2639
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    if-eqz v0, :cond_0

    .line 2640
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2641
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->flush()V

    .line 2642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2644
    :cond_0
    return-void
.end method
