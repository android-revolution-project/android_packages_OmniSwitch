.class Lorg/omnirom/omniswitch/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/SettingsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/SettingsActivity;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/SettingsActivity;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lorg/omnirom/omniswitch/SettingsActivity$2;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 314
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 315
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity$2;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    const-class v3, Lorg/omnirom/omniswitch/SwitchService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    const-string v2, "SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toggle service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz v0, :cond_2

    .line 318
    invoke-static {}, Lorg/omnirom/omniswitch/SwitchService;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity$2;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-virtual {v2, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->stopService(Landroid/content/Intent;)Z

    .line 321
    :cond_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity$2;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-virtual {v2, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 327
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/SettingsActivity$2;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    # getter for: Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lorg/omnirom/omniswitch/SettingsActivity;->access$100(Lorg/omnirom/omniswitch/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enable"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    return-void

    .line 323
    :cond_2
    invoke-static {}, Lorg/omnirom/omniswitch/SwitchService;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity$2;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-virtual {v2, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
