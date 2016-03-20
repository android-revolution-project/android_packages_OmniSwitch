.class public Lorg/omnirom/omniswitch/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    }
.end annotation


# static fields
.field private static sInstance:Lorg/omnirom/omniswitch/PackageManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitDone:Z

.field private mInstalledPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/omnirom/omniswitch/PackageManager$PackageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledPackagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/PackageManager$PackageItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackages:Ljava/util/Map;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackagesList:Ljava/util/List;

    .line 89
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lorg/omnirom/omniswitch/PackageManager;->sInstance:Lorg/omnirom/omniswitch/PackageManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lorg/omnirom/omniswitch/PackageManager;

    invoke-direct {v0}, Lorg/omnirom/omniswitch/PackageManager;-><init>()V

    sput-object v0, Lorg/omnirom/omniswitch/PackageManager;->sInstance:Lorg/omnirom/omniswitch/PackageManager;

    .line 82
    :cond_0
    sget-object v0, Lorg/omnirom/omniswitch/PackageManager;->sInstance:Lorg/omnirom/omniswitch/PackageManager;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/PackageManager;->setContext(Landroid/content/Context;)V

    .line 83
    sget-object v0, Lorg/omnirom/omniswitch/PackageManager;->sInstance:Lorg/omnirom/omniswitch/PackageManager;

    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method private declared-synchronized updateFavorites()V
    .locals 10

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 223
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "favorite_apps"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "favoriteListString":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, "favoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3, v2}, Lorg/omnirom/omniswitch/Utils;->parseFavorites(Ljava/lang/String;Ljava/util/List;)V

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "changed":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v4, "newFavoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 230
    .local v5, "nextFavorite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 231
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, "favorite":Ljava/lang/String;
    iget-object v7, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackages:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 234
    goto :goto_0

    .line 236
    :cond_0
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    .end local v0    # "changed":Z
    .end local v1    # "favorite":Ljava/lang/String;
    .end local v2    # "favoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "favoriteListString":Ljava/lang/String;
    .end local v4    # "newFavoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "nextFavorite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 238
    .restart local v0    # "changed":Z
    .restart local v2    # "favoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "favoriteListString":Ljava/lang/String;
    .restart local v4    # "newFavoriteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "nextFavorite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    if-eqz v0, :cond_2

    .line 239
    :try_start_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "favorite_apps"

    invoke-static {v4}, Lorg/omnirom/omniswitch/Utils;->flattenFavorites(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :cond_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public getPackageIcon(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "item"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .prologue
    .line 116
    iget-object v3, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 118
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 119
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->isIconPackLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v3

    # getter for: Lorg/omnirom/omniswitch/PackageManager$PackageItem;->activity:Landroid/content/pm/ActivityInfo;
    invoke-static {p1}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->access$000(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v1

    .line 121
    .local v1, "iconId":I
    if-eqz v1, :cond_0

    .line 122
    iget-object v3, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconPackResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .end local v1    # "iconId":I
    :cond_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->isIconPackLoaded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 127
    :cond_1
    :try_start_0
    # getter for: Lorg/omnirom/omniswitch/PackageManager$PackageItem;->intent:Landroid/content/Intent;
    invoke-static {p1}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->access$100(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 132
    iget-object v3, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->getDefaultActivityIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    :cond_3
    return-object v0

    .line 128
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public declared-synchronized getPackageItem(Ljava/lang/String;)Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .locals 1
    .param p1, "intent"    # Ljava/lang/String;

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/PackageManager;->getPackageMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageItemByComponent(Landroid/content/Intent;)Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 193
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 194
    .local v3, "name":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackagesList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 198
    .local v4, "nextPackage":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/omnirom/omniswitch/PackageManager$PackageItem;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 199
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .line 200
    .local v2, "item":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    invoke-virtual {v2}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 202
    .local v1, "intentString":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v1, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 206
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 207
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "pPkgName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 214
    .end local v1    # "intentString":Ljava/lang/String;
    .end local v2    # "item":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .end local v5    # "pPkgName":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 203
    .restart local v1    # "intentString":Ljava/lang/String;
    .restart local v2    # "item":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/URISyntaxException;
    move-object v2, v7

    .line 204
    goto :goto_0

    .end local v0    # "e":Ljava/net/URISyntaxException;
    .end local v1    # "intentString":Ljava/lang/String;
    .end local v2    # "item":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    :cond_1
    move-object v2, v7

    .line 214
    goto :goto_0

    .line 193
    .end local v3    # "name":Landroid/content/ComponentName;
    .end local v4    # "nextPackage":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/omnirom/omniswitch/PackageManager$PackageItem;>;"
    .end local v6    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized getPackageList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/PackageManager$PackageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/PackageManager;->mInitDone:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/omnirom/omniswitch/PackageManager;->updatePackageList(ZLjava/lang/String;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackagesList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPackageMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/omnirom/omniswitch/PackageManager$PackageItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/PackageManager;->mInitDone:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/omnirom/omniswitch/PackageManager;->updatePackageList(ZLjava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackages:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updatePackageIcons()V
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updatePackageList(ZLjava/lang/String;)V
    .locals 12
    .param p1, "removed"    # Z
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 139
    .local v9, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lorg/omnirom/omniswitch/PackageManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v10

    invoke-virtual {v10}, Lorg/omnirom/omniswitch/ui/BitmapCache;->clear()V

    .line 141
    iget-object v10, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackages:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 142
    iget-object v10, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackagesList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 144
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v7, "mainIntent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 149
    .local v4, "installedAppsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 150
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 152
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v6, Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    invoke-direct {v6}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;-><init>()V

    .line 153
    .local v6, "item":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    # setter for: Lorg/omnirom/omniswitch/PackageManager$PackageItem;->packageName:Ljava/lang/String;
    invoke-static {v6, v10}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->access$202(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 156
    .local v0, "activity":Landroid/content/pm/ActivityInfo;
    # setter for: Lorg/omnirom/omniswitch/PackageManager$PackageItem;->activity:Landroid/content/pm/ActivityInfo;
    invoke-static {v6, v0}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->access$002(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    .line 157
    new-instance v8, Landroid/content/ComponentName;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v8, "name":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v5, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const/high16 v10, 0x10200000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    # setter for: Lorg/omnirom/omniswitch/PackageManager$PackageItem;->intent:Landroid/content/Intent;
    invoke-static {v6, v5}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->access$102(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/content/Intent;)Landroid/content/Intent;

    .line 166
    invoke-static {v9, v5}, Lorg/omnirom/omniswitch/Utils;->getActivityLabel(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    # setter for: Lorg/omnirom/omniswitch/PackageManager$PackageItem;->title:Ljava/lang/CharSequence;
    invoke-static {v6, v10}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->access$302(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 167
    # getter for: Lorg/omnirom/omniswitch/PackageManager$PackageItem;->title:Ljava/lang/CharSequence;
    invoke-static {v6}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->access$300(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Ljava/lang/CharSequence;

    move-result-object v10

    if-nez v10, :cond_0

    .line 168
    invoke-virtual {v1, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    # setter for: Lorg/omnirom/omniswitch/PackageManager$PackageItem;->title:Ljava/lang/CharSequence;
    invoke-static {v6, v10}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->access$302(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 170
    :cond_0
    iget-object v10, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackages:Ljava/util/Map;

    invoke-virtual {v6}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v10, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackagesList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v0    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "installedAppsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "item":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .end local v7    # "mainIntent":Landroid/content/Intent;
    .end local v8    # "name":Landroid/content/ComponentName;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 174
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "installedAppsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "mainIntent":Landroid/content/Intent;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/omnirom/omniswitch/PackageManager;->updateFavorites()V

    .line 176
    iget-object v10, p0, Lorg/omnirom/omniswitch/PackageManager;->mInstalledPackagesList:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 177
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/omnirom/omniswitch/PackageManager;->mInitDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    monitor-exit p0

    return-void
.end method
