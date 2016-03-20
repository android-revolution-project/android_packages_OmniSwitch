.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$6;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView;->toggleDragHandle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iput-boolean p2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$6;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 621
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 611
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$6;->val$show:Z

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentDragHandleImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 613
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDragButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 615
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 624
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 618
    return-void
.end method
