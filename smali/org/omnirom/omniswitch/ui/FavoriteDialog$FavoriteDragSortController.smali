.class Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;
.super Lorg/omnirom/omniswitch/dslv/DragSortController;
.source "FavoriteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/FavoriteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteDragSortController"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 91
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    .line 92
    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;
    invoke-static {p1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$300(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/dslv/DragSortListView;

    move-result-object v0

    const v1, 0x7f08000c

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/omnirom/omniswitch/dslv/DragSortController;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;III)V

    .line 95
    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;->setRemoveEnabled(Z)V

    .line 96
    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;->setSortEnabled(Z)V

    .line 97
    const v0, 0x363636

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;->setBackgroundColor(I)V

    .line 98
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 109
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$400(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$300(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/dslv/DragSortListView;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    iget-object v1, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-object v0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 0
    .param p1, "floatView"    # Landroid/view/View;

    .prologue
    .line 117
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "floatPoint"    # Landroid/graphics/Point;
    .param p3, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    iget-object v0, v0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$300(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/dslv/DragSortListView;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setFloatAlpha(F)V

    .line 105
    return-void
.end method
