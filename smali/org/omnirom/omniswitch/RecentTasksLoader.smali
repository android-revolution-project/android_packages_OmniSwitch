.class public Lorg/omnirom/omniswitch/RecentTasksLoader;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;,
        Lorg/omnirom/omniswitch/RecentTasksLoader$State;
    }
.end annotation


# static fields
.field private static sInstance:Lorg/omnirom/omniswitch/RecentTasksLoader;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultThumbnailBackground:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

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

.field private mPreloadTasksRunnable:Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;

.field private mPreloaded:Z

.field private mState:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

.field private mSwitchManager:Lorg/omnirom/omniswitch/SwitchManager;

.field private mTaskLoader:Landroid/os/AsyncTask;
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
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v2, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->IDLE:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    iput-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mState:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    .line 81
    iput-object p1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    .line 82
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mLoadedTasks:Ljava/util/List;

    .line 84
    iget-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mActivityManager:Landroid/app/ActivityManager;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 90
    .local v1, "thumbnailWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 92
    .local v0, "thumbnailHeight":I
    new-instance v2, Lorg/omnirom/omniswitch/ui/ColorDrawableWithDimensions;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3, v1, v0}, Lorg/omnirom/omniswitch/ui/ColorDrawableWithDimensions;-><init>(III)V

    iput-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/drawable/Drawable;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/RecentTasksLoader;)Lorg/omnirom/omniswitch/SwitchManager;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mSwitchManager:Lorg/omnirom/omniswitch/SwitchManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/RecentTasksLoader;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mLoadedTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lorg/omnirom/omniswitch/RecentTasksLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloaded:Z

    return p1
.end method

.method static synthetic access$400(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$600(Lorg/omnirom/omniswitch/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/omnirom/omniswitch/RecentTasksLoader;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mDefaultThumbnailBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$802(Lorg/omnirom/omniswitch/RecentTasksLoader;Lorg/omnirom/omniswitch/RecentTasksLoader$State;)Lorg/omnirom/omniswitch/RecentTasksLoader$State;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;
    .param p1, "x1"    # Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mState:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    return-object p1
.end method

.method static synthetic access$900(Lorg/omnirom/omniswitch/RecentTasksLoader;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/RecentTasksLoader;->hasSystemPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 306
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 311
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_1

    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "iconId":I
    iget-object v3, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->isIconPackLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v1

    .line 315
    if-eqz v1, :cond_0

    .line 316
    iget-object v3, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconPackResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 328
    .end local v1    # "iconId":I
    :goto_1
    return-object v3

    .line 308
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 319
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "iconId":I
    :cond_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 320
    if-eqz v1, :cond_1

    .line 322
    :try_start_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_1

    .line 323
    :catch_1
    move-exception v3

    .line 328
    .end local v1    # "iconId":I
    :cond_1
    iget-object v3, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->getDefaultActivityIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/RecentTasksLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader;->sInstance:Lorg/omnirom/omniswitch/RecentTasksLoader;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lorg/omnirom/omniswitch/RecentTasksLoader;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader;->sInstance:Lorg/omnirom/omniswitch/RecentTasksLoader;

    .line 73
    :cond_0
    sget-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader;->sInstance:Lorg/omnirom/omniswitch/RecentTasksLoader;

    return-object v0
.end method

.method private hasSystemPermission(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    const-string v1, "android.permission.READ_FRAME_BUFFER"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 366
    .local v0, "result":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "homeInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, 0x0

    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 108
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 111
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static killInstance()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader;->sInstance:Lorg/omnirom/omniswitch/RecentTasksLoader;

    .line 78
    return-void
.end method


# virtual methods
.method public cancelLoadingTasks()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 174
    iput-object v3, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloadTasksRunnable:Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloadTasksRunnable:Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iput-object v3, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloadTasksRunnable:Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;

    .line 180
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloaded:Z

    .line 182
    sget-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->IDLE:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    iput-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mState:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    .line 183
    return-void
.end method

.method createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lorg/omnirom/omniswitch/TaskDescription;
    .locals 11
    .param p1, "taskId"    # I
    .param p2, "persistentTaskId"    # I
    .param p3, "baseIntent"    # Landroid/content/Intent;
    .param p4, "origActivity"    # Landroid/content/ComponentName;
    .param p5, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 121
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 122
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 123
    .local v8, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 124
    invoke-virtual {v8, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 127
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v9, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 130
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 131
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 132
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v7, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "title":Ljava/lang/String;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 139
    new-instance v0, Lorg/omnirom/omniswitch/TaskDescription;

    iget-object v5, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/omnirom/omniswitch/TaskDescription;-><init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 142
    .local v0, "item":Lorg/omnirom/omniswitch/TaskDescription;
    invoke-virtual {v0, v10}, Lorg/omnirom/omniswitch/TaskDescription;->setLabel(Ljava/lang/CharSequence;)V

    .line 150
    .end local v0    # "item":Lorg/omnirom/omniswitch/TaskDescription;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v10    # "title":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadTaskIcon(Lorg/omnirom/omniswitch/TaskDescription;)V
    .locals 3
    .param p1, "td"    # Lorg/omnirom/omniswitch/TaskDescription;

    .prologue
    .line 291
    iget-object v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 292
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p1, Lorg/omnirom/omniswitch/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v2, v1}, Lorg/omnirom/omniswitch/RecentTasksLoader;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 294
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    monitor-enter p1

    .line 295
    if-eqz v0, :cond_0

    .line 296
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/omnirom/omniswitch/TaskDescription;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 298
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/omnirom/omniswitch/TaskDescription;->setLoaded(Z)V

    .line 299
    monitor-exit p1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public loadTasksInBackground(Lorg/omnirom/omniswitch/SwitchManager;)V
    .locals 3
    .param p1, "manager"    # Lorg/omnirom/omniswitch/SwitchManager;

    .prologue
    const/4 v2, 0x0

    .line 189
    iput-object p1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mSwitchManager:Lorg/omnirom/omniswitch/SwitchManager;

    .line 191
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloaded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mSwitchManager:Lorg/omnirom/omniswitch/SwitchManager;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mSwitchManager:Lorg/omnirom/omniswitch/SwitchManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mLoadedTasks:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/SwitchManager;->update(Ljava/util/List;)V

    .line 196
    iput-boolean v2, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloaded:Z

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mState:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    sget-object v1, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->IDLE:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    if-ne v0, v1, :cond_0

    .line 209
    sget-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->LOADING:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    iput-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mState:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    .line 210
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mLoadedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    new-instance v0, Lorg/omnirom/omniswitch/RecentTasksLoader$1;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/RecentTasksLoader$1;-><init>(Lorg/omnirom/omniswitch/RecentTasksLoader;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    .line 287
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mTaskLoader:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public loadThumbnail(Lorg/omnirom/omniswitch/TaskDescription;)V
    .locals 4
    .param p1, "td"    # Lorg/omnirom/omniswitch/TaskDescription;

    .prologue
    .line 332
    invoke-virtual {p1}, Lorg/omnirom/omniswitch/TaskDescription;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 333
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/omnirom/omniswitch/TaskDescription;->isInitThumb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    :cond_0
    new-instance v1, Lorg/omnirom/omniswitch/RecentTasksLoader$2;

    invoke-direct {v1, p0, p1}, Lorg/omnirom/omniswitch/RecentTasksLoader$2;-><init>(Lorg/omnirom/omniswitch/RecentTasksLoader;Lorg/omnirom/omniswitch/TaskDescription;)V

    .line 359
    .local v1, "thumbnailLoader":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Lorg/omnirom/omniswitch/TaskDescription;Ljava/lang/Void;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
    .end local v1    # "thumbnailLoader":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Lorg/omnirom/omniswitch/TaskDescription;Ljava/lang/Void;>;"
    :cond_1
    return-void
.end method

.method public preloadTasks()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;-><init>(Lorg/omnirom/omniswitch/RecentTasksLoader;Lorg/omnirom/omniswitch/RecentTasksLoader$1;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloadTasksRunnable:Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;

    .line 165
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader;->mPreloadTasksRunnable:Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method
