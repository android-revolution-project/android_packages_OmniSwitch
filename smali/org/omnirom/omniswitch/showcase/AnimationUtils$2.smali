.class final Lorg/omnirom/omniswitch/showcase/AnimationUtils$2;
.super Ljava/lang/Object;
.source "AnimationUtils.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/showcase/AnimationUtils;->createFadeOutAnimation(Ljava/lang/Object;ILorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/omnirom/omniswitch/showcase/AnimationUtils$2;->val$listener:Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 107
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/AnimationUtils$2;->val$listener:Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;

    invoke-interface {v0}, Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;->onAnimationEnd()V

    .line 103
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 98
    return-void
.end method
