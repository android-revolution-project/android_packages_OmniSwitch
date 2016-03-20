.class Lorg/omnirom/omniswitch/ui/SwitchLayout$4;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Lorg/omnirom/omniswitch/ui/HorizontalListView;[I)V
    .locals 5
    .param p1, "listView"    # Lorg/omnirom/omniswitch/ui/HorizontalListView;
    .param p2, "reverseSortedPositions"    # [I

    .prologue
    const/4 v4, 0x0

    .line 359
    const-string v1, "SwitchLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDismiss: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/TaskDescription;

    .line 363
    .local v0, "ad":Lorg/omnirom/omniswitch/TaskDescription;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$4;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/omnirom/omniswitch/SwitchManager;->killTask(Lorg/omnirom/omniswitch/TaskDescription;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v0    # "ad":Lorg/omnirom/omniswitch/TaskDescription;
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v1

    goto :goto_0
.end method
