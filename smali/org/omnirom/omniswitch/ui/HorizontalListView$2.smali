.class Lorg/omnirom/omniswitch/ui/HorizontalListView$2;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/4 v1, 0x1

    # setter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mDataChanged:Z
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$202(Lorg/omnirom/omniswitch/ui/HorizontalListView;Z)Z

    .line 435
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/4 v1, 0x0

    # setter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mHasNotifiedRunningLowOnData:Z
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$302(Lorg/omnirom/omniswitch/ui/HorizontalListView;Z)Z

    .line 437
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$400(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    .line 441
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->invalidate()V

    .line 442
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestLayout()V

    .line 443
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    const/4 v1, 0x0

    # setter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mHasNotifiedRunningLowOnData:Z
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$302(Lorg/omnirom/omniswitch/ui/HorizontalListView;Z)Z

    .line 450
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->unpressTouchedChild()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$400(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    .line 451
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # invokes: Lorg/omnirom/omniswitch/ui/HorizontalListView;->reset()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$500(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V

    .line 455
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->invalidate()V

    .line 456
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$2;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestLayout()V

    .line 457
    return-void
.end method
