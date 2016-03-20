.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$1;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHidden:Z
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    const/4 v1, 0x0

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateDragHandleImage(Z)V
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)V

    .line 103
    :cond_0
    return-void
.end method
