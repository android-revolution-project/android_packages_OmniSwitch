.class Lorg/omnirom/omniswitch/RecentTasksLoader$2;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/RecentTasksLoader;->loadThumbnail(Lorg/omnirom/omniswitch/TaskDescription;)V
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
        "Lorg/omnirom/omniswitch/TaskDescription;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

.field final synthetic val$td:Lorg/omnirom/omniswitch/TaskDescription;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/RecentTasksLoader;Lorg/omnirom/omniswitch/TaskDescription;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    iput-object p2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->val$td:Lorg/omnirom/omniswitch/TaskDescription;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 340
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    .line 341
    .local v1, "origPri":I
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 347
    iget-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->val$td:Lorg/omnirom/omniswitch/TaskDescription;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/TaskDescription;->setInitThumb(Z)V

    .line 348
    iget-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    iget-object v3, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$400(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lorg/omnirom/omniswitch/RecentTasksLoader;->hasSystemPermission(Landroid/content/Context;)Z
    invoke-static {v2, v3}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$900(Lorg/omnirom/omniswitch/RecentTasksLoader;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v2}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$500(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/app/ActivityManager;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->val$td:Lorg/omnirom/omniswitch/TaskDescription;

    iget v3, v3, Lorg/omnirom/omniswitch/TaskDescription;->persistentTaskId:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 351
    iget-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->val$td:Lorg/omnirom/omniswitch/TaskDescription;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    # getter for: Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lorg/omnirom/omniswitch/RecentTasksLoader;->access$400(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lorg/omnirom/omniswitch/TaskDescription;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 355
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 356
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, [Lorg/omnirom/omniswitch/TaskDescription;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/RecentTasksLoader$2;->onProgressUpdate([Lorg/omnirom/omniswitch/TaskDescription;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lorg/omnirom/omniswitch/TaskDescription;)V
    .locals 0
    .param p1, "values"    # [Lorg/omnirom/omniswitch/TaskDescription;

    .prologue
    .line 337
    return-void
.end method
