.class Lorg/omnirom/omniswitch/SettingsActivity$ButtonsApplyRunnable;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonsApplyRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/SettingsActivity;


# direct methods
.method private constructor <init>(Lorg/omnirom/omniswitch/SettingsActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lorg/omnirom/omniswitch/SettingsActivity$ButtonsApplyRunnable;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/omnirom/omniswitch/SettingsActivity;Lorg/omnirom/omniswitch/SettingsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/omnirom/omniswitch/SettingsActivity;
    .param p2, "x1"    # Lorg/omnirom/omniswitch/SettingsActivity$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/SettingsActivity$ButtonsApplyRunnable;-><init>(Lorg/omnirom/omniswitch/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "buttons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity$ButtonsApplyRunnable;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    invoke-static {p1}, Lorg/omnirom/omniswitch/Utils;->buttonMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/omnirom/omniswitch/SettingsActivity;->mButtons:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/SettingsActivity;->access$002(Lorg/omnirom/omniswitch/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lorg/omnirom/omniswitch/SettingsActivity$ButtonsApplyRunnable;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    # getter for: Lorg/omnirom/omniswitch/SettingsActivity;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/omnirom/omniswitch/SettingsActivity;->access$100(Lorg/omnirom/omniswitch/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "buttons_new"

    iget-object v2, p0, Lorg/omnirom/omniswitch/SettingsActivity$ButtonsApplyRunnable;->this$0:Lorg/omnirom/omniswitch/SettingsActivity;

    # getter for: Lorg/omnirom/omniswitch/SettingsActivity;->mButtons:Ljava/lang/String;
    invoke-static {v2}, Lorg/omnirom/omniswitch/SettingsActivity;->access$000(Lorg/omnirom/omniswitch/SettingsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    return-void
.end method
