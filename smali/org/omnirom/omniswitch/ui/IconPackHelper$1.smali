.class final Lorg/omnirom/omniswitch/ui/IconPackHelper$1;
.super Ljava/lang/Object;
.source "IconPackHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/IconPackHelper;->pickIconPack(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$1;->val$adapter:Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 393
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$1;->val$adapter:Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;

    invoke-virtual {v1, p2}, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->isCurrentIconPack(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$1;->val$adapter:Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;

    invoke-virtual {v1, p2}, Lorg/omnirom/omniswitch/ui/IconPackHelper$IconAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "selectedPackage":Ljava/lang/String;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/IconPackHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "iconpack"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
