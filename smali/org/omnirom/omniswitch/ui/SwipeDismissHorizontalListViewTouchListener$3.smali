.class Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissHorizontalListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->performDismiss(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

.field final synthetic val$originalHeight:I


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;I)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    iput p2, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->val$originalHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 398
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # --operator for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDismissAnimationRefCount:I
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$106(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)I

    .line 399
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # getter for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mDismissAnimationRefCount:I
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$100(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)I

    move-result v5

    if-nez v5, :cond_2

    .line 402
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # getter for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$200(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 404
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # getter for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$200(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 405
    .local v0, "dismissPositions":[I
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # getter for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$200(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 406
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # getter for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$200(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;

    iget v5, v5, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->position:I

    aput v5, v0, v1

    .line 405
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 408
    :cond_0
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # getter for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mCallbacks:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$400(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;

    move-result-object v5

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # getter for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mListView:Lorg/omnirom/omniswitch/ui/HorizontalListView;
    invoke-static {v6}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$300(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Lorg/omnirom/omniswitch/ui/HorizontalListView;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;->onDismiss(Lorg/omnirom/omniswitch/ui/HorizontalListView;[I)V

    .line 411
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # getter for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$200(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;

    .line 413
    .local v4, "pendingDismiss":Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;
    iget-object v5, v4, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 414
    iget-object v5, v4, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 415
    iget-object v5, v4, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 416
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->val$originalHeight:I

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 417
    iget-object v5, v4, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 420
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "pendingDismiss":Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;
    :cond_1
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$3;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    # getter for: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->mPendingDismisses:Ljava/util/List;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$200(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 422
    .end local v0    # "dismissPositions":[I
    .end local v1    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
