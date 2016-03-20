.class public Lorg/omnirom/omniswitch/PackageManager$PackageItem;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/omnirom/omniswitch/PackageManager$PackageItem;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/content/pm/ActivityInfo;

.field private intent:Landroid/content/Intent;

.field private packageName:Ljava/lang/String;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->activity:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method static synthetic access$002(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .param p1, "x1"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->activity:Landroid/content/pm/ActivityInfo;

    return-object p1
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$102(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->intent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$202(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$302(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->title:Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->compareTo(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/omnirom/omniswitch/PackageManager$PackageItem;)I
    .locals 3
    .param p1, "another"    # Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .prologue
    .line 71
    iget-object v1, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "result":I
    if-eqz v0, :cond_0

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->activity:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->title:Ljava/lang/CharSequence;

    return-object v0
.end method
