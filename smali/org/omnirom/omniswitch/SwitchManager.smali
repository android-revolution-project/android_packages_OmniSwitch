.class public Lorg/omnirom/omniswitch/SwitchManager;
.super Ljava/lang/Object;
.source "SwitchManager.java"


# instance fields
.field private mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

.field private mContext:Landroid/content/Context;

.field private mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

.field private mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

.field private mLoadedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    .line 50
    invoke-direct {p0}, Lorg/omnirom/omniswitch/SwitchManager;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    .line 89
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .line 90
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-virtual {v0, p0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->setRecentsManager(Lorg/omnirom/omniswitch/SwitchManager;)V

    .line 92
    new-instance v0, Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    .line 93
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-virtual {v0, p0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->setRecentsManager(Lorg/omnirom/omniswitch/SwitchManager;)V

    .line 94
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.omnirom.omniswitch.ACTION_HIDE_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "hideRecent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 321
    return-void
.end method

.method public getSwitchGestureView()Lorg/omnirom/omniswitch/ui/SwitchGestureView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    return-object v0
.end method

.method public goHome(Z)V
    .locals 3
    .param p1, "close"    # Z

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    .line 269
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 270
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 274
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/RecentTasksLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->cancelLoadingTasks()V

    .line 59
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->setHandleRecentsUpdate(Z)V

    .line 60
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->hide()V

    .line 62
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->isShowing()Z

    move-result v0

    return v0
.end method

.method public killAll(Z)V
    .locals 5
    .param p1, "close"    # Z

    .prologue
    .line 180
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    if-eqz v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 186
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 194
    .local v2, "nextTask":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/omnirom/omniswitch/TaskDescription;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 195
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/TaskDescription;

    .line 196
    .local v0, "ad":Lorg/omnirom/omniswitch/TaskDescription;
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/TaskDescription;->getPersistentTaskId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 201
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/TaskDescription;->setKilled()V

    goto :goto_1

    .line 203
    .end local v0    # "ad":Lorg/omnirom/omniswitch/TaskDescription;
    :cond_3
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/SwitchManager;->goHome(Z)V

    goto :goto_0
.end method

.method public killCurrent(Z)V
    .locals 5
    .param p1, "close"    # Z

    .prologue
    const/4 v4, 0x1

    .line 237
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchManager;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v2, v2, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    if-eqz v2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 243
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    goto :goto_0

    .line 250
    :cond_2
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_3

    .line 251
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/TaskDescription;

    .line 252
    .local v0, "ad":Lorg/omnirom/omniswitch/TaskDescription;
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/TaskDescription;->getPersistentTaskId()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 257
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/TaskDescription;->setKilled()V

    .line 259
    .end local v0    # "ad":Lorg/omnirom/omniswitch/TaskDescription;
    :cond_3
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    goto :goto_0
.end method

.method public killManager()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lorg/omnirom/omniswitch/RecentTasksLoader;->killInstance()V

    .line 98
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->hide()V

    .line 99
    return-void
.end method

.method public killOther(Z)V
    .locals 5
    .param p1, "close"    # Z

    .prologue
    .line 207
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    if-eqz v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 213
    .local v1, "am":Landroid/app/ActivityManager;
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 221
    .local v2, "nextTask":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/omnirom/omniswitch/TaskDescription;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/TaskDescription;

    .line 224
    .local v0, "ad":Lorg/omnirom/omniswitch/TaskDescription;
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/TaskDescription;->getPersistentTaskId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 229
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/TaskDescription;->setKilled()V

    goto :goto_1

    .line 231
    .end local v0    # "ad":Lorg/omnirom/omniswitch/TaskDescription;
    :cond_3
    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    goto :goto_0
.end method

.method public killTask(Lorg/omnirom/omniswitch/TaskDescription;)V
    .locals 3
    .param p1, "ad"    # Lorg/omnirom/omniswitch/TaskDescription;

    .prologue
    .line 163
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;

    iget-boolean v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 169
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/TaskDescription;->getPersistentTaskId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 174
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/TaskDescription;->setKilled()V

    .line 175
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->refresh(Ljava/util/List;)V

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/RecentTasksLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->loadTasksInBackground(Lorg/omnirom/omniswitch/SwitchManager;)V

    .line 125
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->setHandleRecentsUpdate(Z)V

    .line 71
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->reload()V

    .line 74
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->show()V

    .line 76
    :cond_0
    return-void
.end method

.method public shutdownService()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->shutdownService()V

    .line 355
    return-void
.end method

.method public startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 329
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 330
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 332
    return-void
.end method

.method public startIntentFromtString(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "close"    # Z

    .prologue
    .line 294
    if-eqz p2, :cond_0

    .line 295
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    .line 299
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 300
    .local v1, "intentapp":Landroid/content/Intent;
    iget-object v2, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    .end local v1    # "intentapp":Landroid/content/Intent;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v2, "SwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URISyntaxException: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SwitchManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFound: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startOmniSwitchSettingsActivity()V
    .locals 3

    .prologue
    .line 344
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    .line 346
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    const-class v2, Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 351
    return-void
.end method

.method public startSettingssActivity()V
    .locals 3

    .prologue
    .line 335
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method public switchTask(Lorg/omnirom/omniswitch/TaskDescription;Z)V
    .locals 6
    .param p1, "ad"    # Lorg/omnirom/omniswitch/TaskDescription;
    .param p2, "close"    # Z

    .prologue
    .line 128
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/TaskDescription;->isKilled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 138
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    .line 142
    :cond_1
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/TaskDescription;->getTaskId()I

    move-result v3

    if-ltz v3, :cond_2

    .line 144
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/TaskDescription;->getTaskId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 148
    .local v2, "intent":Landroid/content/Intent;
    const v3, 0x10104000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    :try_start_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v3, "SwitchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recents does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleLastApp(Z)V
    .locals 3
    .param p1, "close"    # Z

    .prologue
    .line 282
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 283
    if-eqz p1, :cond_0

    .line 284
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/TaskDescription;

    .line 290
    .local v0, "ad":Lorg/omnirom/omniswitch/TaskDescription;
    invoke-virtual {p0, v0, p1}, Lorg/omnirom/omniswitch/SwitchManager;->switchTask(Lorg/omnirom/omniswitch/TaskDescription;Z)V

    goto :goto_0
.end method

.method public update(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "taskList":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/TaskDescription;>;"
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->isHandleRecentsUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->update(Ljava/util/List;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->isHandleRecentsUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iget-object v1, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLoadedTasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->update(Ljava/util/List;)V

    .line 121
    :cond_1
    return-void
.end method

.method public updateLayout()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->updateLayout()V

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updateLayout()V

    .line 315
    :cond_1
    return-void
.end method

.method public updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mLayout:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-virtual {v0, p1, p2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchManager;->mGestureView:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-virtual {v0, p1, p2}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 279
    return-void
.end method
