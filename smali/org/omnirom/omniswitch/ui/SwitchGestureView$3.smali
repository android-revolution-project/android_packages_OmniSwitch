.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;
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
    .line 193
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 198
    const/4 v9, 0x0

    .line 289
    :goto_0
    return v9

    .line 201
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 202
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 203
    .local v7, "xRaw":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 209
    .local v8, "yRaw":F
    packed-switch v0, :pswitch_data_0

    .line 289
    :cond_1
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 211
    :pswitch_0
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPressRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/omnirom/omniswitch/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/RecentTasksLoader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/omnirom/omniswitch/RecentTasksLoader;->cancelLoadingTasks()V

    .line 213
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->resetView()V
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    goto :goto_1

    .line 216
    :pswitch_1
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPressRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 217
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPress:Z
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 218
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lorg/omnirom/omniswitch/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/RecentTasksLoader;

    move-result-object v9

    invoke-virtual {v9}, Lorg/omnirom/omniswitch/RecentTasksLoader;->cancelLoadingTasks()V

    .line 219
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1300(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    if-eqz v9, :cond_2

    .line 220
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    if-nez v9, :cond_3

    .line 221
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v9

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1300(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/omnirom/omniswitch/SwitchManager;->switchTask(Lorg/omnirom/omniswitch/TaskDescription;Z)V

    .line 228
    :cond_2
    :goto_2
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->resetView()V
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    goto :goto_1

    .line 222
    :cond_3
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 223
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v9

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1300(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getIntent()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/omnirom/omniswitch/SwitchManager;->startIntentFromtString(Ljava/lang/String;Z)V

    goto :goto_2

    .line 224
    :cond_4
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 225
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mCurrentItemEnv:[Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1300(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lorg/omnirom/omniswitch/ui/PackageTextView;->runAction()V

    goto :goto_2

    .line 232
    :pswitch_2
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F

    move-result-object v9

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 233
    .local v2, "distanceY":F
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mInitDownPoint:[F
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F

    move-result-object v9

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 235
    .local v1, "distanceX":F
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mTriggerThreshholdX:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v1, v9

    if-gtz v9, :cond_5

    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mTriggerThreshholdX:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v2, v9

    if-lez v9, :cond_6

    .line 236
    :cond_5
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPressRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    :cond_6
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPress:Z
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mTriggerThreshholdX:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v1, v9

    if-lez v9, :cond_7

    .line 243
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    const/4 v10, 0x0

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mEnabled:Z
    invoke-static {v9, v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$902(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z

    .line 244
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLongPressRunnable:Ljava/lang/Runnable;
    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    new-instance v6, Landroid/content/Intent;

    const-string v9, "org.omnirom.omniswitch.ACTION_SHOW_OVERLAY"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v6, "showIntent":Landroid/content/Intent;
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    .end local v6    # "showIntent":Landroid/content/Intent;
    :cond_7
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mShowingSpeedSwitcher:Z
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 252
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    float-to-int v10, v7

    float-to-int v11, v8

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->isValidCoordinate(II)Z
    invoke-static {v9, v10, v11}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;II)Z

    move-result v9

    if-nez v9, :cond_8

    .line 253
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    const/4 v10, -0x2

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_1

    .line 254
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->clearViewBackground()V
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 255
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->hideAllBorders()V
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 256
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->hideAllLists()V
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 257
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->resetEnvItems()V
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 258
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v10

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLockedLevel:I
    invoke-static {v9, v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2302(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    .line 259
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    const/4 v10, -0x2

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v9, v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1402(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    goto/16 :goto_1

    .line 263
    :cond_8
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    float-to-int v10, v7

    float-to-int v11, v8

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->calcLevel(II)I
    invoke-static {v9, v10, v11}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;II)I

    move-result v4

    .line 264
    .local v4, "newLevel":I
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    if-eq v4, v9, :cond_9

    .line 265
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v5

    .line 269
    .local v5, "oldLevel":I
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevel:I
    invoke-static {v9, v4}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$1402(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    .line 270
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    float-to-int v11, v7

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getHorizontalGridIndex(I)I
    invoke-static {v10, v11}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    move-result v10

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I
    invoke-static {v9, v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2502(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    .line 271
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->doLevelChange(I)V
    invoke-static {v9, v5}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2700(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)V

    .line 272
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDownPoint:[F
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F

    move-result-object v9

    const/4 v10, 0x0

    aput v7, v9, v10

    .line 274
    .end local v5    # "oldLevel":I
    :cond_9
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_a

    .line 275
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iget-object v10, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    float-to-int v11, v7

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getHorizontalGridIndex(I)I
    invoke-static {v10, v11}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    move-result v10

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I
    invoke-static {v9, v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2502(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    goto/16 :goto_1

    .line 277
    :cond_a
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    float-to-int v10, v7

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getHorizontalGridIndex(I)I
    invoke-static {v9, v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2600(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    move-result v3

    .line 278
    .local v3, "levelX":I
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    float-to-int v10, v7

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->drawLevelChangeBorders(I)V
    invoke-static {v9, v10}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2900(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)V

    .line 279
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2500(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)I

    move-result v9

    if-eq v9, v3, :cond_1

    .line 283
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mLevelX:I
    invoke-static {v9, v3}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2502(Lorg/omnirom/omniswitch/ui/SwitchGestureView;I)I

    .line 284
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->switchItem()V
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3000(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V

    .line 285
    iget-object v9, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mDownPoint:[F
    invoke-static {v9}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$2800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[F

    move-result-object v9

    const/4 v10, 0x0

    aput v7, v9, v10

    goto/16 :goto_1

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
