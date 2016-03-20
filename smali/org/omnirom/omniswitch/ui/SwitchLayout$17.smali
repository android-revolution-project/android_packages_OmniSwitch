.class Lorg/omnirom/omniswitch/ui/SwitchLayout$17;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->handleLongPressRecent(Lorg/omnirom/omniswitch/TaskDescription;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

.field final synthetic val$ad:Lorg/omnirom/omniswitch/TaskDescription;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/TaskDescription;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->val$ad:Lorg/omnirom/omniswitch/TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 853
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f08003a

    if-ne v4, v5, :cond_1

    .line 854
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->val$ad:Lorg/omnirom/omniswitch/TaskDescription;

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/SwitchManager;->killTask(Lorg/omnirom/omniswitch/TaskDescription;)V

    .line 876
    :goto_0
    const/4 v3, 0x1

    :cond_0
    :goto_1
    return v3

    .line 855
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f080036

    if-ne v4, v5, :cond_2

    .line 856
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->val$ad:Lorg/omnirom/omniswitch/TaskDescription;

    invoke-virtual {v4}, Lorg/omnirom/omniswitch/TaskDescription;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/SwitchManager;->startApplicationDetailsActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f080039

    if-ne v4, v5, :cond_0

    .line 858
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->val$ad:Lorg/omnirom/omniswitch/TaskDescription;

    invoke-virtual {v4}, Lorg/omnirom/omniswitch/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 859
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 860
    .local v1, "intentStr":Ljava/lang/String;
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/omnirom/omniswitch/PackageManager;->getPackageItem(Ljava/lang/String;)Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    move-result-object v2

    .line 862
    .local v2, "packageItem":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    if-nez v2, :cond_4

    .line 865
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/omnirom/omniswitch/PackageManager;->getPackageItemByComponent(Landroid/content/Intent;)Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    move-result-object v2

    .line 866
    if-nez v2, :cond_3

    .line 867
    const-string v4, "SwitchLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 870
    :cond_3
    invoke-virtual {v2}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v1

    .line 872
    :cond_4
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$17;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lorg/omnirom/omniswitch/Utils;->addToFavorites(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
