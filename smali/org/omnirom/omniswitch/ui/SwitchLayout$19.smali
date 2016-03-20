.class Lorg/omnirom/omniswitch/ui/SwitchLayout$19;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->handleLongPressFavorite(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

.field final synthetic val$packageItem:Lorg/omnirom/omniswitch/PackageManager$PackageItem;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/PackageManager$PackageItem;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$19;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$19;->val$packageItem:Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 894
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080038

    if-ne v0, v1, :cond_0

    .line 895
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$19;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$19;->val$packageItem:Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/SwitchManager;->startApplicationDetailsActivity(Ljava/lang/String;)V

    .line 901
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 896
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080037

    if-ne v0, v1, :cond_1

    .line 897
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$19;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$19;->val$packageItem:Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$19;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/omnirom/omniswitch/Utils;->removeFromFavorites(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 899
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
