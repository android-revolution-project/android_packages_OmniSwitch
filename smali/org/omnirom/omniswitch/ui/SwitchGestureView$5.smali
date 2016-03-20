.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$5;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView;->show()V
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
    .line 474
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$5;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$5;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->startShowcaseDragHandle()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 478
    return-void
.end method
