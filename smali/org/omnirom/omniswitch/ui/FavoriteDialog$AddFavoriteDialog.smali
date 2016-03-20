.class Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;
.super Landroid/app/AlertDialog;
.source "FavoriteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/FavoriteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddFavoriteDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;,
        Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;
    }
.end annotation


# instance fields
.field private mChangedFavoriteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/PackageManager$PackageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mPackageAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;

.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;


# direct methods
.method protected constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    .line 304
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 305
    return-void
.end method

.method static synthetic access$600(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mInstalledPackages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 233
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mInstalledPackages:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mChangedFavoriteList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 309
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 310
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mChangedFavoriteList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->applyChanges(Ljava/util/List;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->cancel()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 318
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 319
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 321
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->setView(Landroid/view/View;)V

    .line 322
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->setTitle(I)V

    .line 323
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->setCancelable(Z)V

    .line 325
    const/4 v2, -0x1

    const v3, 0x104000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 327
    const/4 v2, -0x2

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 330
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mChangedFavoriteList:Ljava/util/List;

    .line 332
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mChangedFavoriteList:Ljava/util/List;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$100(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mListView:Landroid/widget/ListView;

    .line 335
    new-instance v2, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;

    invoke-direct {v2, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)V

    iput-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mPackageAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;

    .line 336
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mPackageAdapter:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mListView:Landroid/widget/ListView;

    new-instance v3, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$1;

    invoke-direct {v3, p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$1;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 354
    return-void
.end method
