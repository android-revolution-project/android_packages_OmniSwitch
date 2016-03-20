.class Lorg/omnirom/omniswitch/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 183
    iput-object p1, p0, Lorg/omnirom/omniswitch/SettingsActivity$1;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity$1;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-virtual {v0, p1, p2}, Lorg/omnirom/omniswitch/SettingsActivity;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 187
    return-void
.end method
