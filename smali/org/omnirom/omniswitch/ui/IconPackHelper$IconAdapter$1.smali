.class Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter$1;
.super Ljava/lang/Object;
.source "IconPackHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter$1;->this$0:Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 465
    check-cast p1, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter$1;->compare(Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;)I
    .locals 2
    .param p1, "lhs"    # Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;
    .param p2, "rhs"    # Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;

    .prologue
    .line 468
    iget-object v0, p1, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconPackInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
