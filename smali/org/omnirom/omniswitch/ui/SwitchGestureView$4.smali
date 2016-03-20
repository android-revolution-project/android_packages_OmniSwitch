.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView;-><init>(Landroid/content/Context;)V
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
    .line 295
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 301
    .local v0, "action":I
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 305
    :cond_1
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 307
    :pswitch_2
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHidden:Z
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mAutoHide:Z

    if-eqz v3, :cond_2

    .line 308
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateDragHandleImage(Z)V
    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)V

    .line 309
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAutoHideRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v1, v2

    .line 310
    goto :goto_0

    .line 315
    :cond_2
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowingSpeedSwitcher:Z
    invoke-static {v3, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1702(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z

    .line 316
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandleRecentsUpdate:Z
    invoke-static {v3, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$602(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z

    .line 317
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPress:Z
    invoke-static {v3, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$502(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z

    .line 319
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/omnirom/omniswitch/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/RecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/RecentTasksLoader;->cancelLoadingTasks()V

    .line 320
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/omnirom/omniswitch/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/RecentTasksLoader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/RecentTasksLoader;->preloadTasks()V

    .line 322
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDownPoint:[F
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    aput v4, v3, v1

    .line 323
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDownPoint:[F
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    aput v4, v3, v2

    .line 324
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    aput v4, v3, v1

    .line 325
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    aput v4, v3, v2

    .line 327
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mSpeedSwitcher:Z
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3300(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPressRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
