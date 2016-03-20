.class Lorg/omnirom/omniswitch/ui/SwitchLayout$25;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->toggleOverlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Z)V
    .locals 0

    .prologue
    .line 1280
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$25;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    iput-boolean p2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$25;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1301
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1283
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$25;->val$show:Z

    if-nez v0, :cond_0

    .line 1286
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$25;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopupView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2800(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchLayout$25$1;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout$25$1;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout$25;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 1295
    :goto_0
    return-void

    .line 1293
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$25;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->showDone()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2900(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1304
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1298
    return-void
.end method
