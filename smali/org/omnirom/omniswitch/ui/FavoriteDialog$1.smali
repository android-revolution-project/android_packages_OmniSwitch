.class Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;
.super Ljava/lang/Object;
.source "FavoriteDialog.java"

# interfaces
.implements Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/FavoriteDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$100(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    .local v0, "intent":Ljava/lang/String;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$100(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$400(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->notifyDataSetChanged()V

    .line 161
    return-void
.end method
