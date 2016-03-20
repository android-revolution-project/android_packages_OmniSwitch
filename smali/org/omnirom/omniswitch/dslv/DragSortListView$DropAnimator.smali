.class Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;
.super Lorg/omnirom/omniswitch/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimator"
.end annotation


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;FI)V
    .locals 0
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1126
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .line 1127
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/dslv/DragSortListView$SmoothAnimator;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;FI)V

    .line 1128
    return-void
.end method

.method private getTargetY()I
    .locals 6

    .prologue
    .line 1140
    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1141
    .local v0, "first":I
    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mItemHeightCollapsed:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1000(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v1, v4, 0x2

    .line 1142
    .local v1, "otherAdjust":I
    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->mDropPos:I

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1143
    .local v3, "v":Landroid/view/View;
    const/4 v2, -0x1

    .line 1144
    .local v2, "targetY":I
    if-eqz v3, :cond_2

    .line 1145
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ne v4, v5, :cond_0

    .line 1146
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1159
    :goto_0
    return v2

    .line 1147
    :cond_0
    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->mDropPos:I

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->srcPos:I

    if-ge v4, v5, :cond_1

    .line 1149
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v2, v4, v1

    goto :goto_0

    .line 1152
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatViewHeight:I
    invoke-static {v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1100(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_0

    .line 1156
    :cond_2
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 1132
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatPos:I
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$800(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->mDropPos:I

    .line 1133
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSrcPos:I
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$900(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->srcPos:I

    .line 1134
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    const/4 v1, 0x2

    # setter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$102(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I

    .line 1135
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$500(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    .line 1136
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$500(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    .line 1137
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->dropFloatView()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1200(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V

    .line 1177
    return-void
.end method

.method public onUpdate(FF)V
    .locals 6
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    .line 1164
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->getTargetY()I

    move-result v2

    .line 1165
    .local v2, "targetY":I
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$500(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v2

    int-to-float v0, v3

    .line 1166
    .local v0, "deltaY":F
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, p2

    .line 1167
    .local v1, "f":F
    iget v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    div-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    .line 1168
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$500(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v4, v1

    float-to-int v4, v4

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 1169
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFloatLoc:Landroid/graphics/Point;
    invoke-static {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$500(Lorg/omnirom/omniswitch/dslv/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 1170
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$DropAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    const/4 v4, 0x1

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->doDragFloatView(Z)V
    invoke-static {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$700(Lorg/omnirom/omniswitch/dslv/DragSortListView;Z)V

    .line 1172
    :cond_0
    return-void
.end method
