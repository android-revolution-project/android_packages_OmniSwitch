.class Lorg/omnirom/omniswitch/RecentTasksLoader$1;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/RecentTasksLoader;->loadTasksInBackground(Lorg/omnirom/omniswitch/SwitchManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lorg/omnirom/omniswitch/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/RecentTasksLoader;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 230
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v11

    .line 231
    .local v11, "origPri":I
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 232
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$400(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 234
    .local v12, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$500(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/app/ActivityManager;

    move-result-object v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v14

    .line 237
    .local v14, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    .line 238
    .local v10, "numTasks":I
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 242
    .local v6, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    :cond_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mLoadedTasks:Ljava/util/List;
    invoke-static {v2}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$200(Lorg/omnirom/omniswitch/RecentTasksLoader;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 282
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    sget-object v1, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->IDLE:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    # setter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mState:Lorg/omnirom/omniswitch/RecentTasksLoader$State;
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$802(Lorg/omnirom/omniswitch/RecentTasksLoader;Lorg/omnirom/omniswitch/RecentTasksLoader$State;)Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    .line 283
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 284
    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_2
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 249
    .local v13, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v8, Landroid/content/Intent;

    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 250
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 255
    :cond_3
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    # invokes: Lorg/omnirom/omniswitch/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    invoke-static {v0, v1, v6}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$600(Lorg/omnirom/omniswitch/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 260
    :cond_5
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$400(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 265
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    iget v1, v13, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget v2, v13, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iget-object v3, v13, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    iget-object v4, v13, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    iget-object v5, v13, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v5}, Lorg/omnirom/omniswitch/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v9

    .line 269
    .local v9, "item":Lorg/omnirom/omniswitch/TaskDescription;
    if-eqz v9, :cond_4

    .line 270
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/omnirom/omniswitch/TaskDescription;->setInitThumb(Z)V

    .line 271
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$700(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/omnirom/omniswitch/TaskDescription;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mLoadedTasks:Ljava/util/List;
    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$200(Lorg/omnirom/omniswitch/RecentTasksLoader;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    invoke-virtual {v0, v9}, Lorg/omnirom/omniswitch/RecentTasksLoader;->loadTaskIcon(Lorg/omnirom/omniswitch/TaskDescription;)V

    goto :goto_1
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 212
    check-cast p1, [Ljava/util/List;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->onProgressUpdate([Ljava/util/List;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "values":[Ljava/util/List;, "[Ljava/util/List<Lorg/omnirom/omniswitch/TaskDescription;>;"
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mSwitchManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$100(Lorg/omnirom/omniswitch/RecentTasksLoader;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mSwitchManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v0}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$100(Lorg/omnirom/omniswitch/RecentTasksLoader;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mLoadedTasks:Ljava/util/List;
    invoke-static {v1}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$200(Lorg/omnirom/omniswitch/RecentTasksLoader;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/SwitchManager;->update(Ljava/util/List;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    const/4 v1, 0x1

    # setter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloaded:Z
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$302(Lorg/omnirom/omniswitch/RecentTasksLoader;Z)Z

    goto :goto_0
.end method
