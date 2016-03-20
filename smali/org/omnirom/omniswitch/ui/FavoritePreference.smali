.class public Lorg/omnirom/omniswitch/ui/FavoritePreference;
.super Landroid/preference/DialogPreference;
.source "FavoritePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 49
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/FavoritePreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "favorite_apps"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "favoriteListString":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, "favoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/Utils;->parseFavorites(Ljava/lang/String;Ljava/util/List;)V

    .line 53
    new-instance v0, Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/FavoritePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-direct {v0, v3, v1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;-><init>(Lorg/omnirom/omniswitch/SettingsActivity;Ljava/util/List;)V

    .line 54
    .local v0, "d":Lorg/omnirom/omniswitch/ui/FavoriteDialog;
    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 45
    return-void
.end method
