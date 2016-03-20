.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView;->loadRecentItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

.field final synthetic val$actualView:Landroid/widget/HorizontalScrollView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Landroid/widget/HorizontalScrollView;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;->val$actualView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 760
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;->val$actualView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 761
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;->val$actualView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 762
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->drawCurrentLevelBorders()V
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 763
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v2

    iget v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mLocation:I

    if-nez v2, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$7;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayWidth()I

    move-result v0

    :cond_0
    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->drawLevelChangeBorders(I)V
    invoke-static {v1, v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)V

    .line 764
    return-void
.end method
