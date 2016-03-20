.class Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;
.super Lorg/omnirom/omniswitch/dslv/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveAnimator"
.end annotation


# instance fields
.field private mFirstChildHeight:I

.field private mFirstPos:I

.field private mFirstStartBlank:F

.field private mSecondChildHeight:I

.field private mSecondPos:I

.field private mSecondStartBlank:F

.field final synthetic this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;FI)V
    .locals 1
    .param p2, "smoothness"    # F
    .param p3, "duration"    # I

    .prologue
    const/4 v0, -0x1

    .line 1195
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .line 1196
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/dslv/DragSortListView$SmoothAnimator;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;FI)V

    .line 1189
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1190
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1197
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1201
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1202
    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1203
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mFirstExpPos:I
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1300(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    .line 1204
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mSecondExpPos:I
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1400(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v0

    iput v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    .line 1205
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    const/4 v1, 0x1

    # setter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$102(Lorg/omnirom/omniswitch/dslv/DragSortListView;I)I

    .line 1206
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->destroyFloatView()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1500(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V

    .line 1207
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->doRemoveItem()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1700(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V

    .line 1245
    return-void
.end method

.method public onUpdate(FF)V
    .locals 10
    .param p1, "frac"    # F
    .param p2, "smoothFrac"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1211
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v1, v5, p2

    .line 1213
    .local v1, "f":F
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1214
    .local v2, "firstVis":I
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1217
    .local v3, "item":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1218
    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    if-ne v5, v7, :cond_0

    .line 1219
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I
    invoke-static {v5, v6, v3, v8}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1600(Lorg/omnirom/omniswitch/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v5

    iput v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    .line 1220
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    .line 1222
    :cond_0
    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstStartBlank:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1223
    .local v0, "blank":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1224
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstChildHeight:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1225
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1227
    .end local v0    # "blank":I
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    iget v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mFirstPos:I

    if-eq v5, v6, :cond_3

    .line 1228
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1229
    if-eqz v3, :cond_3

    .line 1230
    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    if-ne v5, v7, :cond_2

    .line 1231
    iget-object v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondPos:I

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->getChildHeight(ILandroid/view/View;Z)I
    invoke-static {v5, v6, v3, v8}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$1600(Lorg/omnirom/omniswitch/dslv/DragSortListView;ILandroid/view/View;Z)I

    move-result v5

    iput v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    .line 1232
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    .line 1234
    :cond_2
    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondStartBlank:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1235
    .restart local v0    # "blank":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1236
    .restart local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveAnimator;->mSecondChildHeight:I

    add-int/2addr v5, v0

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1237
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1240
    .end local v0    # "blank":I
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method
