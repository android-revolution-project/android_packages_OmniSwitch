.class Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/IconPackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconAdapter"
.end annotation


# instance fields
.field mCurrentIconPack:Ljava/lang/String;

.field mCurrentIconPackPosition:I

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mSupportedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p2, "supportedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 460
    const/4 v3, -0x1

    iput v3, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mCurrentIconPackPosition:I

    .line 463
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 464
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    .line 465
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    new-instance v4, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter$1;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter$1;-><init>(Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 472
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 473
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f090041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "defaultLabel":Ljava/lang/String;
    const v3, 0x7f02000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 475
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    new-instance v5, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;

    const-string v6, ""

    invoke-direct {v5, v0, v1, v6}, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 476
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "iconpack"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mCurrentIconPack:Ljava/lang/String;

    .line 477
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 456
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;

    iget-object v0, v0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 491
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 500
    if-nez p2, :cond_0

    .line 501
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030008

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 503
    :cond_0
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mSupportedPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;

    .line 504
    .local v1, "info":Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;
    const v5, 0x7f080019

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 505
    .local v4, "txtView":Landroid/widget/TextView;
    iget-object v5, v1, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    const v5, 0x7f080018

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 507
    .local v0, "imgView":Landroid/widget/ImageView;
    iget-object v5, v1, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    const v5, 0x7f08001a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 509
    .local v3, "radioButton":Landroid/widget/RadioButton;
    iget-object v5, v1, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mCurrentIconPack:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 510
    .local v2, "isCurrentIconPack":Z
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 511
    if-eqz v2, :cond_1

    .line 512
    iput p1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mCurrentIconPackPosition:I

    .line 514
    :cond_1
    return-object p2
.end method

.method public isCurrentIconPack(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 495
    iget v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->mCurrentIconPackPosition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
