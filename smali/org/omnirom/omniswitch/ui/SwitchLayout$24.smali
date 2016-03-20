.class Lorg/omnirom/omniswitch/ui/SwitchLayout$24;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->toggleFavorites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$24;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1250
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 1241
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$24;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$24;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$24;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->setButtonGlow(Landroid/widget/ImageButton;IZ)V
    invoke-static {v2, v3, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1600(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/widget/ImageButton;IZ)V

    .line 1244
    return-void

    .line 1241
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1253
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1247
    return-void
.end method
