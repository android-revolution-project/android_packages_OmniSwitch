.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$2$1;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2$1;->this$1:Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2$1;->this$1:Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;

    iget-object v0, v0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->startShowcaseQuickSwitcher()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$300(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 120
    return-void
.end method
