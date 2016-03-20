.class Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/IconPackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconPackInfo"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "r"    # Landroid/content/pm/ResolveInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->packageName:Ljava/lang/String;

    .line 442
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 443
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->label:Ljava/lang/CharSequence;

    .line 444
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->label:Ljava/lang/CharSequence;

    .line 451
    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 452
    iput-object p3, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->packageName:Ljava/lang/String;

    .line 453
    return-void
.end method
