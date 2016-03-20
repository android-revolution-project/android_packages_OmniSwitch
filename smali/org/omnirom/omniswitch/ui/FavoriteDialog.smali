.class public Lorg/omnirom/omniswitch/ui/FavoriteDialog;
.super Landroid/app/AlertDialog;
.source "FavoriteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;,
        Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;,
        Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;
    }
.end annotation


# instance fields
.field private mAddFavoriteDialog:Landroid/app/AlertDialog;

.field private mContext:Lorg/omnirom/omniswitch/SettingsActivity;

.field private mFavoriteAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;

.field private mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;

.field private mFavoriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field params:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/SettingsActivity;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Lorg/omnirom/omniswitch/SettingsActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/omnirom/omniswitch/SettingsActivity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "favoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->params:Landroid/view/ViewGroup$LayoutParams;

    .line 122
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;

    .line 123
    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;

    .line 124
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lorg/omnirom/omniswitch/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/SettingsActivity;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;

    return-object v0
.end method

.method static synthetic access$300(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->showAddFavoriteDialog()V

    return-void
.end method

.method private showAddFavoriteDialog()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mAddFavoriteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mAddFavoriteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mAddFavoriteDialog:Landroid/app/AlertDialog;

    .line 223
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mAddFavoriteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 224
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mAddFavoriteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public applyChanges(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "favoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->notifyDataSetChanged()V

    .line 231
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 210
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 211
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->applyChanges(Ljava/util/List;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->cancel()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030005

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 133
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->setView(Landroid/view/View;)V

    .line 134
    const v3, 0x7f090020

    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->setTitle(I)V

    .line 135
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->setCancelable(Z)V

    .line 137
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 139
    const/4 v3, -0x3

    const v4, 0x7f090023

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 141
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 144
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .line 148
    new-instance v3, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;

    const v5, 0x109000f

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;

    invoke-direct {v3, p0, v4, v5, v6}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;

    .line 150
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    new-instance v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteDragSortController;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)V

    .line 153
    .local v1, "dragSortController":Lorg/omnirom/omniswitch/dslv/DragSortController;
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v3, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setFloatViewManager(Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;)V

    .line 154
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)V

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setDropListener(Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;)V

    .line 163
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/FavoriteDialog$2;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$2;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)V

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setRemoveListener(Lorg/omnirom/omniswitch/dslv/DragSortListView$RemoveListener;)V

    .line 171
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/FavoriteDialog$3;

    invoke-direct {v4, p0, v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$3;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;Lorg/omnirom/omniswitch/dslv/DragSortController;)V

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteConfigList:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setItemsCanFocus(Z)V

    .line 178
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 203
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mAddFavoriteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mAddFavoriteDialog:Landroid/app/AlertDialog;

    .line 206
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 184
    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 185
    .local v0, "neutralButton":Landroid/widget/Button;
    new-instance v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$4;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$4;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 196
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mAddFavoriteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mAddFavoriteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 199
    :cond_0
    return-void
.end method
