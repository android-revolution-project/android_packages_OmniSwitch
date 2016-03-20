.class Lorg/omnirom/omniswitch/SwitchService$1;
.super Ljava/lang/Object;
.source "SwitchService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/SwitchService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/SwitchService;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/SwitchService;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lorg/omnirom/omniswitch/SwitchService$1;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/omnirom/omniswitch/SwitchService$1;->this$0:Lorg/omnirom/omniswitch/SwitchService;

    invoke-virtual {v0, p1, p2}, Lorg/omnirom/omniswitch/SwitchService;->updatePrefs(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 89
    return-void
.end method
