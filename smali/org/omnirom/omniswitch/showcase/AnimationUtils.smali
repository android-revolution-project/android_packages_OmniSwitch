.class public Lorg/omnirom/omniswitch/showcase/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static createFadeOutAnimation(Ljava/lang/Object;ILorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "duration"    # I
    .param p2, "listener"    # Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;

    .prologue
    .line 94
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 95
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lorg/omnirom/omniswitch/showcase/AnimationUtils$2;

    invoke-direct {v2, p2}, Lorg/omnirom/omniswitch/showcase/AnimationUtils$2;-><init>(Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    return-object v0
.end method

.method public static createFadeOutAnimation(Ljava/lang/Object;Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "listener"    # Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;

    .prologue
    .line 89
    const/16 v0, 0x12c

    invoke-static {p0, v0, p1}, Lorg/omnirom/omniswitch/showcase/AnimationUtils;->createFadeOutAnimation(Ljava/lang/Object;ILorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method
