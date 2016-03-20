.class Lorg/omnirom/omniswitch/dslv/DragSortListView$2;
.super Landroid/database/DataSetObserver;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$2;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$2;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mDragState:I
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$100(Lorg/omnirom/omniswitch/dslv/DragSortListView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$2;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->cancelDrag()V

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$2;->cancel()V

    .line 536
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Lorg/omnirom/omniswitch/dslv/DragSortListView$2;->cancel()V

    .line 541
    return-void
.end method
