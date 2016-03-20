.class Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;
.super Ljava/lang/Object;
.source "RecentTasksLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/RecentTasksLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadTaskRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;


# direct methods
.method private constructor <init>(Lorg/omnirom/omniswitch/RecentTasksLoader;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/omnirom/omniswitch/RecentTasksLoader;Lorg/omnirom/omniswitch/RecentTasksLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/omnirom/omniswitch/RecentTasksLoader;
    .param p2, "x1"    # Lorg/omnirom/omniswitch/RecentTasksLoader$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;-><init>(Lorg/omnirom/omniswitch/RecentTasksLoader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/omnirom/omniswitch/RecentTasksLoader$PreloadTaskRunnable;->this$0:Lorg/omnirom/omniswitch/RecentTasksLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/RecentTasksLoader;->loadTasksInBackground(Lorg/omnirom/omniswitch/SwitchManager;)V

    .line 160
    return-void
.end method
