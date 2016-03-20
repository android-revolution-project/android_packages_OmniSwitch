.class public Lorg/omnirom/omniswitch/PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    invoke-static {}, Lorg/omnirom/omniswitch/SwitchService;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 31
    .local v1, "removed":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 32
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "pkg":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lorg/omnirom/omniswitch/PackageManager;->updatePackageList(ZLjava/lang/String;)V

    .line 35
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "removed":Z
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    return-void

    .line 32
    .restart local v1    # "removed":Z
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
