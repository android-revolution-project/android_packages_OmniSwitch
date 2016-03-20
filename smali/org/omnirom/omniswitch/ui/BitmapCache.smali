.class public Lorg/omnirom/omniswitch/ui/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# static fields
.field private static sInstance:Lorg/omnirom/omniswitch/ui/BitmapCache;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 48
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 50
    .local v0, "cacheSize":I
    new-instance v2, Lorg/omnirom/omniswitch/ui/BitmapCache$1;

    invoke-direct {v2, p0, v0}, Lorg/omnirom/omniswitch/ui/BitmapCache$1;-><init>(Lorg/omnirom/omniswitch/ui/BitmapCache;I)V

    iput-object v2, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mMemoryCache:Landroid/util/LruCache;

    .line 62
    return-void
.end method

.method private bitmapHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "intent"    # Ljava/lang/String;

    .prologue
    .line 77
    return-object p1
.end method

.method private bitmapHash(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Ljava/lang/String;
    .param p2, "iconSize"    # I

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lorg/omnirom/omniswitch/ui/BitmapCache;->sInstance:Lorg/omnirom/omniswitch/ui/BitmapCache;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lorg/omnirom/omniswitch/ui/BitmapCache;

    invoke-direct {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;-><init>()V

    sput-object v0, Lorg/omnirom/omniswitch/ui/BitmapCache;->sInstance:Lorg/omnirom/omniswitch/ui/BitmapCache;

    .line 40
    :cond_0
    sget-object v0, Lorg/omnirom/omniswitch/ui/BitmapCache;->sInstance:Lorg/omnirom/omniswitch/ui/BitmapCache;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->setContext(Landroid/content/Context;)V

    .line 41
    sget-object v0, Lorg/omnirom/omniswitch/ui/BitmapCache;->sInstance:Lorg/omnirom/omniswitch/ui/BitmapCache;

    return-object v0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method public addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 70
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageIcon(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageItem"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .prologue
    .line 106
    invoke-virtual {p2}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->bitmapHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 109
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/omnirom/omniswitch/PackageManager;->getPackageIcon(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 110
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->isIconPackLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {p2}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconBack()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconMask()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconUpon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconScale()F

    move-result v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->compose(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 116
    :cond_0
    invoke-virtual {p0, v7, v1}, Lorg/omnirom/omniswitch/ui/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_1
    return-object v1
.end method

.method public getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/PackageManager$PackageItem;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageItem"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .param p3, "configuration"    # Lorg/omnirom/omniswitch/SwitchConfiguration;
    .param p4, "size"    # I

    .prologue
    .line 85
    invoke-virtual {p2}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lorg/omnirom/omniswitch/ui/BitmapCache;->bitmapHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 87
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 88
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/omnirom/omniswitch/PackageManager;->getPackageIcon(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 89
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->isIconPackLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {p2}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconBack()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconMask()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconUpon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconScale()F

    move-result v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->compose(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 95
    :cond_0
    iget v0, p3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    iget v2, p3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    invoke-static {p1, v1, p4, v0, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->resize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    .line 100
    invoke-virtual {p0, v8, v7}, Lorg/omnirom/omniswitch/ui/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 102
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v7
.end method

.method public getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/TaskDescription;Landroid/graphics/drawable/Drawable;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "ad"    # Lorg/omnirom/omniswitch/TaskDescription;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "configuration"    # Lorg/omnirom/omniswitch/SwitchConfiguration;
    .param p5, "size"    # I

    .prologue
    .line 122
    invoke-virtual {p2}, Lorg/omnirom/omniswitch/TaskDescription;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lorg/omnirom/omniswitch/ui/BitmapCache;->bitmapHash(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 124
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 125
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->isIconPackLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {p2}, Lorg/omnirom/omniswitch/TaskDescription;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/BitmapCache;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconBack()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconMask()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconUpon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getIconPackHelper()Lorg/omnirom/omniswitch/ui/IconPackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconScale()F

    move-result v6

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->compose(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p3

    .line 131
    :cond_0
    iget v0, p4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconBorder:I

    iget v1, p4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mDensity:F

    invoke-static {p1, p3, p5, v0, v1}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->resize(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IIF)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    .line 136
    invoke-virtual {p0, v8, v7}, Lorg/omnirom/omniswitch/ui/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_1
    return-object v7
.end method
