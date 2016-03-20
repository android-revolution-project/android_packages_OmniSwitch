.class Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;
.super Lorg/omnirom/omniswitch/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiftAnimator"
.end annotation


# instance fields
.field private mFinalDragDeltaY:F

.field private mInitDragDeltaY:F

.field final synthetic this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;FI)V
    .locals 0
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1094
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .line 1095
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/dslv/DragSortListView$SmoothAnimator;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;FI)V

    .line 1096
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .prologue
    .line 1100
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaY:I
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    .line 1101
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeightHalf:I
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$400(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    .line 1102
    return-void
.end method

.method public onUpdate(FF)V
    .locals 4
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1106
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$100(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1107
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->cancel()V

    .line 1113
    :goto_0
    return-void

    .line 1109
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->mFinalDragDeltaY:F

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->mInitDragDeltaY:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    # setter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaY:I
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$302(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I

    .line 1110
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$500(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mY:I
    invoke-static {v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$600(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragDeltaY:I
    invoke-static {v2}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1111
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$LiftAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    const/4 v1, 0x1

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->doDragFloatView(Z)V
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$700(Lorg/omnirom/omniswitch/dslv/DragSortListView;Z)V

    goto :goto_0
.end method
