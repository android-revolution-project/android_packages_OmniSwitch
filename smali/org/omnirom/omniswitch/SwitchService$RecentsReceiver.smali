.class public Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SwitchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/SwitchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/SwitchService;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/SwitchService;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private hide()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchManager;->hide()V

    .line 135
    return-void
.end method

.method private show(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchManager;->show()V

    .line 131
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "action":Ljava/lang/String;
    # getter for: Lorg/omnirom/omniswitch/SwitchService;->DEBUG:Z
    invoke-static {}, Lorg/omnirom/omniswitch/SwitchService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "SwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const-string v2, "org.omnirom.omniswitch.ACTION_SHOW_OVERLAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 144
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 145
    # getter for: Lorg/omnirom/omniswitch/SwitchService;->DEBUG:Z
    invoke-static {}, Lorg/omnirom/omniswitch/SwitchService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const-string v2, "SwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SHOW_OVERLAY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->show(Landroid/content/Context;)V

    .line 180
    :cond_2
    :goto_0
    return-void

    .line 150
    :cond_3
    const-string v2, "org.omnirom.omniswitch.ACTION_HIDE_OVERLAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 151
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-direct {p0}, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->hide()V

    goto :goto_0

    .line 154
    :cond_4
    const-string v2, "org.omnirom.omniswitch.ACTION_HANDLE_SHOW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 155
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$200(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleShow:Z

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchManager;->getSwitchGestureView()Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->show()V

    goto :goto_0

    .line 158
    :cond_5
    const-string v2, "org.omnirom.omniswitch.ACTION_HANDLE_HIDE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 159
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchManager;->getSwitchGestureView()Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->hide()V

    goto :goto_0

    .line 160
    :cond_6
    const-string v2, "org.omnirom.omniswitch.ACTION_TOGGLE_OVERLAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 161
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 162
    invoke-direct {p0}, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->hide()V

    goto :goto_0

    .line 164
    :cond_7
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 166
    :cond_8
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 167
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 168
    .local v1, "userId":I
    const-string v2, "SwitchService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user switch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mUserId:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/SwitchService;->access$300(Lorg/omnirom/omniswitch/SwitchService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mUserId:I
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$300(Lorg/omnirom/omniswitch/SwitchService;)I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 170
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchManager;->getSwitchGestureView()Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->hide()V

    goto/16 :goto_0

    .line 172
    :cond_9
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$200(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDragHandleShow:Z

    if-eqz v2, :cond_2

    .line 173
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchManager;->getSwitchGestureView()Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->show()V

    goto/16 :goto_0

    .line 176
    .end local v1    # "userId":I
    :cond_a
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    const-string v2, "SwitchService"

    const-string v3, "ACTION_SHUTDOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchService$RecentsReceiver;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    # getter for: Lorg/omnirom/omniswitch/SwitchService;->mManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SwitchService;->access$000(Lorg/omnirom/omniswitch/SwitchService;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/SwitchManager;->shutdownService()V

    goto/16 :goto_0
.end method
