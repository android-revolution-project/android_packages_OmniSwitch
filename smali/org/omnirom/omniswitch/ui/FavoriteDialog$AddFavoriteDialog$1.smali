.class Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$1;
.super Ljava/lang/Object;
.source "FavoriteDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$1;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .line 343
    .local v0, "info":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;

    .line 344
    .local v1, "viewHolder":Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;
    iget-object v3, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v2, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 345
    iget-object v2, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$1;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mChangedFavoriteList:Ljava/util/List;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$800(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$1;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mChangedFavoriteList:Ljava/util/List;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$800(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_0
    :goto_1
    return-void

    .line 344
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 350
    :cond_2
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$1;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mChangedFavoriteList:Ljava/util/List;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$800(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
