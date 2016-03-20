.class Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;


# direct methods
.method private constructor <init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V
    .locals 0

    .prologue
    .line 1170
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;Lorg/omnirom/omniswitch/ui/HorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p2, "x1"    # Lorg/omnirom/omniswitch/ui/HorizontalListView$1;

    .prologue
    .line 1170
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;-><init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1174
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    # setter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDownX:F
    invoke-static {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$602(Lorg/omnirom/omniswitch/ui/HorizontalListView;F)F

    .line 1175
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1176
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->setEnabled(Z)V

    .line 1178
    :cond_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildIndex(II)I
    invoke-static {v2, v3, v4}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$800(Lorg/omnirom/omniswitch/ui/HorizontalListView;II)I

    move-result v1

    .line 1179
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 1181
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$900(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I

    move-result v2

    add-int v0, v2, v1

    .line 1182
    .local v0, "adapterIndex":I
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1183
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->setAdapterIndex(I)V

    .line 1184
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1188
    .end local v0    # "adapterIndex":I
    :cond_1
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v2, p1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    .line 1197
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDownX:F
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$600(Lorg/omnirom/omniswitch/ui/HorizontalListView;)F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1199
    .local v0, "deltaX":F
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSlop:I
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1000(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->isSwiping()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1200
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->setEnabled(Z)V

    .line 1215
    :cond_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$400(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    .line 1216
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v2

    :goto_0
    return v2

    .line 1202
    :cond_1
    const/4 v1, 0x0

    .line 1203
    .local v1, "res":Z
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1204
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mScrollXThreshold:I
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1100(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->isSwiping()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1205
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->cancelSwipe()V

    goto :goto_0

    .line 1208
    :cond_2
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1211
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1286
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    .line 1287
    .local v0, "onItemLongClickListener":Landroid/widget/AdapterView$OnItemLongClickListener;
    if-eqz v0, :cond_0

    .line 1288
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$400(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    .line 1290
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildIndex(II)I
    invoke-static {v1, v4, v5}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$800(Lorg/omnirom/omniswitch/ui/HorizontalListView;II)I

    move-result v7

    .line 1291
    .local v7, "index":I
    if-ltz v7, :cond_0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mBlockTouchAction:Z
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1500(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1292
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v1, v7}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1293
    .local v2, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1294
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$900(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I

    move-result v1

    add-int v3, v1, v7

    .line 1295
    .local v3, "adapterIndex":I
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v4, v4, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1299
    .local v6, "handled":Z
    if-eqz v6, :cond_0

    .line 1301
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->performHapticFeedback(I)Z

    .line 1306
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "adapterIndex":I
    .end local v6    # "handled":Z
    .end local v7    # "index":I
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v5, 0x1

    .line 1227
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDownX:F
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$600(Lorg/omnirom/omniswitch/ui/HorizontalListView;)F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1228
    .local v0, "deltaX":F
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSlop:I
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1000(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->isSwiping()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1229
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->setEnabled(Z)V

    .line 1245
    :cond_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestParentListViewToNotInterceptTouchEvents(Ljava/lang/Boolean;)V
    invoke-static {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1200(Lorg/omnirom/omniswitch/ui/HorizontalListView;Ljava/lang/Boolean;)V

    .line 1247
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    sget-object v3, Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->setCurrentScrollState(Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    invoke-static {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1300(Lorg/omnirom/omniswitch/ui/HorizontalListView;Lorg/omnirom/omniswitch/ui/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    .line 1248
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$400(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    .line 1249
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget v3, v2, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    float-to-int v4, p3

    add-int/2addr v3, v4

    iput v3, v2, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mNextX:I

    .line 1250
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->updateOverscrollAnimation(I)V
    invoke-static {v2, v3}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1400(Lorg/omnirom/omniswitch/ui/HorizontalListView;I)V

    .line 1251
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestLayout()V

    .line 1253
    :goto_0
    return v5

    .line 1231
    :cond_1
    const/4 v1, 0x0

    .line 1232
    .local v1, "res":Z
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1233
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mScrollXThreshold:I
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1100(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->isSwiping()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1234
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->cancelSwipe()V

    goto :goto_0

    .line 1237
    :cond_2
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mSwipeListener:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$700(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1240
    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1258
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$400(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    .line 1259
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 1261
    .local v0, "onItemClickListener":Landroid/widget/AdapterView$OnItemClickListener;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildIndex(II)I
    invoke-static {v1, v4, v5}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$800(Lorg/omnirom/omniswitch/ui/HorizontalListView;II)I

    move-result v6

    .line 1265
    .local v6, "index":I
    if-ltz v6, :cond_0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mBlockTouchAction:Z
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1500(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1266
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v1, v6}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1267
    .local v2, "child":Landroid/view/View;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mLeftViewAdapterIndex:I
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$900(Lorg/omnirom/omniswitch/ui/HorizontalListView;)I

    move-result v1

    add-int v3, v1, v6

    .line 1269
    .local v3, "adapterIndex":I
    if-eqz v0, :cond_0

    .line 1270
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    iget-object v4, v4, Lorg/omnirom/omniswitch/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1273
    const/4 v1, 0x1

    .line 1281
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "adapterIndex":I
    :goto_0
    return v1

    .line 1277
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1600(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mBlockTouchAction:Z
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1500(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1278
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$1600(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$GestureListener;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-interface {v1, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1281
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
