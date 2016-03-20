.class Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;
.super Landroid/widget/HeaderViewListAdapter;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWrapper"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v0, 0x0

    .line 618
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .line 619
    invoke-direct {p0, v0, v0, p2}, Landroid/widget/HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 620
    iput-object p2, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    .line 621
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 633
    if-eqz p2, :cond_1

    move-object v2, p2

    .line 634
    check-cast v2, Lorg/omnirom/omniswitch/dslv/DragSortItemView;

    .line 635
    .local v2, "v":Lorg/omnirom/omniswitch/dslv/DragSortItemView;
    invoke-virtual {v2, v4}, Lorg/omnirom/omniswitch/dslv/DragSortItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 637
    .local v1, "oldChild":Landroid/view/View;
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1, v1, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 638
    .local v0, "child":Landroid/view/View;
    if-eq v0, v1, :cond_0

    .line 640
    invoke-virtual {v2, v4}, Lorg/omnirom/omniswitch/dslv/DragSortItemView;->removeViewAt(I)V

    .line 641
    invoke-virtual {v2, v0}, Lorg/omnirom/omniswitch/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    .line 654
    .end local v1    # "oldChild":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, p1

    const/4 v5, 0x1

    # invokes: Lorg/omnirom/omniswitch/dslv/DragSortListView;->adjustItem(ILandroid/view/View;Z)V
    invoke-static {v3, v4, v2, v5}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$200(Lorg/omnirom/omniswitch/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 656
    return-object v2

    .line 644
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "v":Lorg/omnirom/omniswitch/dslv/DragSortItemView;
    :cond_1
    new-instance v2, Lorg/omnirom/omniswitch/dslv/DragSortItemView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/omnirom/omniswitch/dslv/DragSortItemView;-><init>(Landroid/content/Context;)V

    .line 645
    .restart local v2    # "v":Lorg/omnirom/omniswitch/dslv/DragSortItemView;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/dslv/DragSortItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    iget-object v3, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$AdapterWrapper;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 649
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v2, v0}, Lorg/omnirom/omniswitch/dslv/DragSortItemView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
