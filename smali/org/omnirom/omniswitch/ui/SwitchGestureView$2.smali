.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;
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
    .line 109
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowcaseQuickDone:Z
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2$1;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2$1;-><init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPress:Z
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$502(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z

    .line 123
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandleRecentsUpdate:Z
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$602(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z

    .line 124
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/RecentTasksLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$2;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/RecentTasksLoader;->loadTasksInBackground(Lorg/omnirom/omniswitch/SwitchManager;)V

    goto :goto_0
.end method
