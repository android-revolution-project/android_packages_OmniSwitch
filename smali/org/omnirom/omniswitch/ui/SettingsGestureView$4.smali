.class Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;
.super Ljava/lang/Object;
.source "SettingsGestureView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SettingsGestureView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 233
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 235
    :pswitch_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1300(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 236
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "drag_handle_location_new"

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$200(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1500(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getCurrentDisplayHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    div-int v2, v3, v4

    .line 238
    .local v2, "relHeight":I
    const-string v3, "handle_pos_start_relative"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 239
    const-string v3, "handle_height"

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$300(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v4

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$200(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 241
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$4;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->hide()V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
