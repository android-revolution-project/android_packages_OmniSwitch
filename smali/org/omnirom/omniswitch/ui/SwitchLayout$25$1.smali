.class Lorg/omnirom/omniswitch/ui/SwitchLayout$25$1;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout$25;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/omnirom/omniswitch/ui/SwitchLayout$25;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout$25;)V
    .locals 0

    .prologue
    .line 1286
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$25$1;->this$1:Lorg/omnirom/omniswitch/ui/SwitchLayout$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$25$1;->this$1:Lorg/omnirom/omniswitch/ui/SwitchLayout$25;

    iget-object v0, v0, Lorg/omnirom/omniswitch/ui/SwitchLayout$25;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->hideDone()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    .line 1290
    return-void
.end method
