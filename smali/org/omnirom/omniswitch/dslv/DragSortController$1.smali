.class Lorg/omnirom/omniswitch/dslv/DragSortController$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DragSortController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/dslv/DragSortController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/dslv/DragSortController;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/dslv/DragSortController;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortController$1;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x1

    .line 470
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortController$1;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortController;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortController;->mRemoveEnabled:Z
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortController;->access$000(Lorg/omnirom/omniswitch/dslv/DragSortController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortController$1;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortController;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortController;->mRemoveMode:I
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortController;->access$100(Lorg/omnirom/omniswitch/dslv/DragSortController;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 484
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 473
    :pswitch_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortController$1;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortController;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortController;->mFlingSpeed:F
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortController;->access$200(Lorg/omnirom/omniswitch/dslv/DragSortController;)F

    move-result v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 474
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortController$1;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortController;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortController;->mDslv:Lorg/omnirom/omniswitch/dslv/DragSortListView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortController;->access$300(Lorg/omnirom/omniswitch/dslv/DragSortController;)Lorg/omnirom/omniswitch/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->stopDrag(Z)Z

    goto :goto_0

    .line 478
    :pswitch_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortController$1;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortController;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortController;->mFlingSpeed:F
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortController;->access$200(Lorg/omnirom/omniswitch/dslv/DragSortController;)F

    move-result v0

    neg-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortController$1;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortController;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortController;->mDslv:Lorg/omnirom/omniswitch/dslv/DragSortListView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortController;->access$300(Lorg/omnirom/omniswitch/dslv/DragSortController;)Lorg/omnirom/omniswitch/dslv/DragSortListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->stopDrag(Z)Z

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
