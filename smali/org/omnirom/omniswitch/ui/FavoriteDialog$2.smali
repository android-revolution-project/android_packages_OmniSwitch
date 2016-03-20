.class Lorg/omnirom/omniswitch/ui/FavoriteDialog$2;
.super Ljava/lang/Object;
.source "FavoriteDialog.java"

# interfaces
.implements Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;


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
    .line 164
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$100(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$400(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->notifyDataSetChanged()V

    .line 169
    return-void
.end method
