.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView;->doLevelChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

.field final synthetic val$actualView:Landroid/widget/HorizontalScrollView;

.field final synthetic val$finalOldList:Landroid/widget/HorizontalScrollView;

.field final synthetic val$idxFinal:I


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Landroid/widget/HorizontalScrollView;ILandroid/widget/HorizontalScrollView;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$actualView:Landroid/widget/HorizontalScrollView;

    iput p3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$idxFinal:I

    iput-object p4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v5, 0x3f800000    # 1.0f

    .line 971
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$actualView:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$idxFinal:I

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v4

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->levelToListLevel(I)I
    invoke-static {v3, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    move-result v3

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getListItemWidth(I)I
    invoke-static {v2, v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    move-result v2

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 972
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->initAlpha()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$4000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 973
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9$1;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9$1;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 980
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$actualView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 985
    :goto_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->drawCurrentLevelBorders()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 986
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$actualView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
