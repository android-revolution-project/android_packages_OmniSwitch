.class public Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FavoriteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/FavoriteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FavoriteListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    .line 68
    const v0, 0x7f030004

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    const/4 v4, 0x0

    .line 74
    .local v4, "rowView":Landroid/view/View;
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$000(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 76
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mFavoriteList:Ljava/util/List;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$100(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, "intent":Ljava/lang/String;
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$200(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/SettingsActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/omnirom/omniswitch/PackageManager;->getPackageItem(Ljava/lang/String;)Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    move-result-object v3

    .line 79
    .local v3, "packageItem":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    const v5, 0x7f080016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "item":Landroid/widget/TextView;
    invoke-virtual {v3}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v5, 0x7f080015

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$200(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/SettingsActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v5

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->mContext:Lorg/omnirom/omniswitch/SettingsActivity;
    invoke-static {v6}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$200(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)Lorg/omnirom/omniswitch/SettingsActivity;

    move-result-object v6

    invoke-virtual {v6}, Lorg/omnirom/omniswitch/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getPackageIcon(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-object v4
.end method
