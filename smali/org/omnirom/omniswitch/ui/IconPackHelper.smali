.class public Lorg/omnirom/omniswitch/ui/IconPackHelper;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;,
        Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lorg/omnirom/omniswitch/ui/IconPackHelper;

.field public static final sSupportedActions:[Ljava/lang/String;

.field public static final sSupportedCategories:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIconPack:Ljava/lang/String;

.field private mIconBack:Landroid/graphics/drawable/Drawable;

.field private mIconMask:Landroid/graphics/drawable/Drawable;

.field private mIconPackResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconScale:F

.field private mIconUpon:Landroid/graphics/drawable/Drawable;

.field private mLoadedIconPackName:Ljava/lang/String;

.field private mLoadedIconPackResource:Landroid/content/res/Resources;

.field private mLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "org.adw.launcher.THEMES"

    aput-object v1, v0, v2

    const-string v1, "com.gau.go.launcherex.theme"

    aput-object v1, v0, v3

    sput-object v0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->sSupportedActions:[Ljava/lang/String;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.fede.launcher.THEME_ICONPACK"

    aput-object v1, v0, v2

    const-string v1, "com.anddoes.launcher.THEME"

    aput-object v1, v0, v3

    const-string v1, "com.teslacoilsw.launcher.THEME"

    aput-object v1, v0, v4

    sput-object v0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->sSupportedCategories:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mCurrentIconPack:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconPackResources:Ljava/util/Map;

    .line 96
    return-void
.end method

.method private getDrawableForName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->isIconPackLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconPackResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "item":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-direct {p0, v1}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 108
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 112
    .end local v0    # "id":I
    .end local v1    # "item":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getIconPackResources(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 278
    const/4 v14, 0x0

    .line 368
    :cond_0
    :goto_0
    return-object v14

    .line 281
    :cond_1
    const/16 v19, 0x0

    .line 283
    .local v19, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 289
    const/16 v18, 0x0

    .line 290
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v16, 0x0

    .line 291
    .local v16, "inputStream":Ljava/io/InputStream;
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v14, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string v22, "appfilter.xml"

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 295
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    .line 296
    .local v9, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 297
    const-string v21, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 307
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_2
    :goto_1
    if-eqz v18, :cond_5

    .line 309
    :try_start_2
    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 318
    check-cast v18, Landroid/content/res/XmlResourceParser;

    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 320
    :cond_3
    if-eqz v16, :cond_0

    .line 322
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v21

    goto :goto_0

    .line 284
    .end local v14    # "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 285
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 286
    const/4 v14, 0x0

    goto :goto_0

    .line 298
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v14    # "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v7

    .line 301
    .local v7, "e":Ljava/lang/Exception;
    const-string v21, "appfilter"

    const-string v22, "xml"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 302
    .local v20, "resId":I
    if-eqz v20, :cond_2

    .line 303
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    goto :goto_1

    .line 311
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v20    # "resId":I
    :catch_3
    move-exception v7

    .line 312
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 318
    check-cast v18, Landroid/content/res/XmlResourceParser;

    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 320
    :cond_4
    if-eqz v16, :cond_5

    .line 322
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 330
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_2
    const-string v21, "theme_iconpack"

    const-string v22, "array"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 331
    .local v6, "arrayId":I
    if-nez v6, :cond_6

    .line 332
    const-string v21, "icon_pack"

    const-string v22, "array"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 335
    :cond_6
    if-eqz v6, :cond_c

    .line 336
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 337
    .local v13, "iconPack":[Ljava/lang/String;
    move-object v5, v13

    .local v5, "arr$":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    aget-object v8, v5, v10

    .line 339
    .local v8, "entry":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 337
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 313
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v6    # "arrayId":I
    .end local v8    # "entry":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "iconPack":[Ljava/lang/String;
    .end local v17    # "len$":I
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v7

    .line 314
    .local v7, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 317
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 318
    check-cast v18, Landroid/content/res/XmlResourceParser;

    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 320
    :cond_8
    if-eqz v16, :cond_5

    .line 322
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 323
    :catch_5
    move-exception v21

    goto :goto_2

    .line 317
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v21

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/content/res/XmlResourceParser;

    move/from16 v22, v0

    if-eqz v22, :cond_9

    .line 318
    check-cast v18, Landroid/content/res/XmlResourceParser;

    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 320
    :cond_9
    if-eqz v16, :cond_a

    .line 322
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 324
    :cond_a
    :goto_5
    throw v21

    .line 343
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v6    # "arrayId":I
    .restart local v8    # "entry":Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v13    # "iconPack":[Ljava/lang/String;
    .restart local v17    # "len$":I
    :cond_b
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 344
    .local v11, "icon":Ljava/lang/String;
    const-string v21, "_"

    const-string v22, "."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    invoke-interface {v14, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 349
    .local v4, "activityIndex":I
    if-lez v4, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_7

    .line 353
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 354
    .local v15, "iconPackage":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 357
    invoke-interface {v14, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    add-int/lit8 v21, v4, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, "iconActivity":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 363
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v14, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 366
    .end local v4    # "activityIndex":I
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v8    # "entry":Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "icon":Ljava/lang/String;
    .end local v12    # "iconActivity":Ljava/lang/String;
    .end local v13    # "iconPack":[Ljava/lang/String;
    .end local v15    # "iconPackage":Ljava/lang/String;
    .end local v17    # "len$":I
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v14, v1}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->loadApplicationResources(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .end local v6    # "arrayId":I
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_6
    move-exception v21

    goto/16 :goto_2

    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v22

    goto :goto_5
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/IconPackHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->sInstance:Lorg/omnirom/omniswitch/ui/IconPackHelper;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/omnirom/omniswitch/ui/IconPackHelper;

    invoke-direct {v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;-><init>()V

    sput-object v0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->sInstance:Lorg/omnirom/omniswitch/ui/IconPackHelper;

    .line 74
    :cond_0
    sget-object v0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->sInstance:Lorg/omnirom/omniswitch/ui/IconPackHelper;

    invoke-direct {v0, p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->setContext(Landroid/content/Context;)V

    .line 75
    sget-object v0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->sInstance:Lorg/omnirom/omniswitch/ui/IconPackHelper;

    return-object v0
.end method

.method private getResourceIdForDrawable(Ljava/lang/String;)I
    .locals 4
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 410
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 411
    .local v0, "resId":I
    return v0
.end method

.method public static getSupportedPackages(Landroid/content/Context;)Ljava/util/Map;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 116
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v3, "i":Landroid/content/Intent;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v9, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 119
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v1, Lorg/omnirom/omniswitch/ui/IconPackHelper;->sSupportedActions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v1, v5

    .line 120
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v8, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 122
    .local v10, "r":Landroid/content/pm/ResolveInfo;
    new-instance v6, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;

    invoke-direct {v6, v10, v8}, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    .line 123
    .local v6, "info":Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 119
    .end local v6    # "info":Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;
    .end local v10    # "r":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 126
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "i":Landroid/content/Intent;
    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v3    # "i":Landroid/content/Intent;
    sget-object v1, Lorg/omnirom/omniswitch/ui/IconPackHelper;->sSupportedCategories:[Ljava/lang/String;

    array-length v7, v1

    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-object v2, v1, v5

    .line 128
    .local v2, "category":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {v8, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "i$":I
    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 130
    .restart local v10    # "r":Landroid/content/pm/ResolveInfo;
    new-instance v6, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;

    invoke-direct {v6, v10, v8}, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    .line 131
    .restart local v6    # "info":Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 133
    .end local v6    # "info":Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;
    .end local v10    # "r":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {v3, v2}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 127
    add-int/lit8 v4, v5, 0x1

    .local v4, "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_2

    .line 135
    .end local v2    # "category":Ljava/lang/String;
    :cond_3
    return-object v9
.end method

.method private static loadApplicationResources(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 210
    .local v5, "drawableItems":[Ljava/lang/reflect/Field;
    const/4 v14, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 212
    .local v3, "appContext":Landroid/content/Context;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".R$drawable"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 218
    move-object v4, v5

    .local v4, "arr$":[Ljava/lang/reflect/Field;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v12, :cond_1

    aget-object v7, v4, v8

    .line 219
    .local v7, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 221
    .local v13, "name":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 222
    .local v9, "icon":Ljava/lang/String;
    const-string v14, "_"

    const-string v15, "."

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 224
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, "activityIndex":I
    if-lez v2, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v2, v14, :cond_2

    .line 218
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "activityIndex":I
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v4    # "arr$":[Ljava/lang/reflect/Field;
    .end local v7    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "i$":I
    .end local v9    # "icon":Ljava/lang/String;
    .end local v12    # "len$":I
    .end local v13    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 243
    :cond_1
    return-void

    .line 231
    .restart local v2    # "activityIndex":I
    .restart local v3    # "appContext":Landroid/content/Context;
    .restart local v4    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v7    # "f":Ljava/lang/reflect/Field;
    .restart local v8    # "i$":I
    .restart local v9    # "icon":Ljava/lang/String;
    .restart local v12    # "len$":I
    .restart local v13    # "name":Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    invoke-virtual {v13, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 232
    .local v11, "iconPackage":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 235
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 238
    .local v10, "iconActivity":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 241
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private loadIconPack()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 246
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mCurrentIconPack:Ljava/lang/String;

    .line 247
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 273
    :goto_0
    return v4

    .line 250
    :cond_0
    iput-boolean v5, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoading:Z

    .line 251
    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getIconPackResources(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconPackResources:Ljava/util/Map;

    .line 252
    const/4 v2, 0x0

    .line 254
    .local v2, "res":Landroid/content/res/Resources;
    :try_start_0
    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 260
    iput-object v2, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    .line 261
    iput-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    .line 262
    const-string v6, "iconback"

    invoke-direct {p0, v6}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getDrawableForName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconBack:Landroid/graphics/drawable/Drawable;

    .line 263
    const-string v6, "iconmask"

    invoke-direct {p0, v6}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getDrawableForName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconMask:Landroid/graphics/drawable/Drawable;

    .line 264
    const-string v6, "iconupon"

    invoke-direct {p0, v6}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getDrawableForName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconUpon:Landroid/graphics/drawable/Drawable;

    .line 265
    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconPackResources:Ljava/util/Map;

    const-string v7, "scale"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 266
    .local v3, "scale":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 268
    :try_start_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconScale:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoading:Z

    move v4, v5

    .line 273
    goto :goto_0

    .line 255
    .end local v3    # "scale":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 257
    iput-boolean v4, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoading:Z

    goto :goto_0

    .line 269
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "scale":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private static loadResourcesFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "iconPackResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 140
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 143
    .local v2, "eventType":I
    :cond_0
    const/4 v6, 0x2

    if-eq v2, v6, :cond_2

    .line 203
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 204
    return-void

    .line 147
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "iconmask"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "iconback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "iconupon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 150
    :cond_3
    const-string v6, "img"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "icon":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 152
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 153
    invoke-interface {p0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    .end local v4    # "icon":Ljava/lang/String;
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "scale"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 161
    const-string v6, "factor"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "factor":Ljava/lang/String;
    if-nez v3, :cond_6

    .line 163
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 164
    invoke-interface {p0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    .end local v3    # "factor":Ljava/lang/String;
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    const-string v6, "component"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "component":Ljava/lang/String;
    const-string v6, "drawable"

    invoke-interface {p0, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "drawable":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    const-string v6, "ComponentInfo{"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "}"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x10

    if-lt v6, v7, :cond_1

    .line 190
    const/16 v6, 0xe

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 192
    const/4 v5, 0x0

    .line 193
    .local v5, "name":Landroid/content/ComponentName;
    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 195
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 197
    :cond_8
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 198
    if-eqz v5, :cond_1

    .line 199
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static pickIconPack(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 382
    invoke-static {p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getSupportedPackages(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 383
    .local v2, "supportedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    const v3, 0x7f090043

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 401
    :goto_0
    return-void

    .line 388
    :cond_0
    new-instance v0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;

    invoke-direct {v0, p0, v2}, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 389
    .local v0, "adapter":Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090040

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 391
    new-instance v3, Lorg/omnirom/omniswitch/ui/IconPackHelper$1;

    invoke-direct {v3, v0, p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper$1;-><init>(Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method


# virtual methods
.method public getIconBack()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconBack:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconMask()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconMask:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconPackResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getIconScale()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconScale:F

    return v0
.end method

.method public getIconUpon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconUpon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getResourceIdForActivityIcon(Landroid/content/pm/ActivityInfo;)I
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->isIconPackLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoading:Z

    if-eqz v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v1

    .line 423
    :cond_1
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconPackResources:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 425
    .local v0, "drawable":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 427
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconPackResources:Ljava/util/Map;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "drawable":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 428
    .restart local v0    # "drawable":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 432
    :cond_2
    invoke-direct {p0, v0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->getResourceIdForDrawable(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public isIconPackLoaded()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconPackResources:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unloadIconPack()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackResource:Landroid/content/res/Resources;

    .line 373
    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mLoadedIconPackName:Ljava/lang/String;

    .line 374
    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconPackResources:Ljava/util/Map;

    .line 375
    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconMask:Landroid/graphics/drawable/Drawable;

    .line 376
    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconBack:Landroid/graphics/drawable/Drawable;

    .line 377
    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconUpon:Landroid/graphics/drawable/Drawable;

    .line 378
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mIconScale:F

    .line 379
    return-void
.end method

.method public updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 519
    if-eqz p2, :cond_0

    const-string v1, "iconpack"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    :cond_0
    const-string v1, "iconpack"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "iconPack":Ljava/lang/String;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mCurrentIconPack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    .end local v0    # "iconPack":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 526
    .restart local v0    # "iconPack":Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mCurrentIconPack:Ljava/lang/String;

    .line 528
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mCurrentIconPack:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 529
    :cond_3
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->unloadIconPack()V

    .line 531
    :cond_4
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mCurrentIconPack:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 532
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/IconPackHelper;->loadIconPack()Z

    .line 534
    :cond_5
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/PackageManager;->updatePackageIcons()V

    goto :goto_0
.end method
