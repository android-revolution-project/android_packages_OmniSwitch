.class Lorg/omnirom/omniswitch/showcase/ShowcaseView$4;
.super Ljava/lang/Object;
.source "ShowcaseView.java"

# interfaces
.implements Lorg/omnirom/omniswitch/showcase/AnimationUtils$AnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/showcase/ShowcaseView;->fadeOutShowcase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/showcase/ShowcaseView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/showcase/ShowcaseView;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$4;->this$0:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$4;->this$0:Lorg/omnirom/omniswitch/showcase/ShowcaseView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/showcase/ShowcaseView;->setVisibility(I)V

    .line 856
    return-void
.end method
