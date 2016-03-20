.class Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavoriteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageAdapter"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 250
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->reloadList()V

    .line 251
    return-void
.end method

.method private reloadList()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    # setter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mInstalledPackages:Ljava/util/List;
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$602(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;Ljava/util/List;)Ljava/util/List;

    .line 245
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mInstalledPackages:Ljava/util/List;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$600(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    iget-object v1, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$200(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/SettingsActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/PackageManager;->getPackageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mInstalledPackages:Ljava/util/List;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$600(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 247
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mInstalledPackages:Ljava/util/List;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$600(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->getItem(I)Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mInstalledPackages:Ljava/util/List;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$600(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mInstalledPackages:Ljava/util/List;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$600(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 272
    if-eqz p2, :cond_0

    .line 273
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;

    .line 287
    .local v1, "holder":Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->getItem(I)Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    move-result-object v0

    .line 288
    .local v0, "applicationInfo":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    iget-object v2, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->item:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v2, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    iget-object v3, v3, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$200(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/SettingsActivity;

    move-result-object v3

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    iget-object v4, v4, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$200(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/SettingsActivity;

    move-result-object v4

    invoke-virtual {v4}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getPackageIcon(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v2, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->mChangedFavoriteList:Ljava/util/List;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->access$800(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 293
    return-object p2

    .line 275
    .end local v0    # "applicationInfo":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .end local v1    # "holder":Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;
    :cond_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 277
    new-instance v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$PackageAdapter;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;)V

    .line 278
    .restart local v1    # "holder":Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 280
    const v2, 0x7f080016

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->item:Landroid/widget/TextView;

    .line 282
    const v2, 0x7f08001b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 284
    const v2, 0x7f080015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->image:Landroid/widget/ImageView;

    goto :goto_0
.end method
