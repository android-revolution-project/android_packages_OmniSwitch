.class Lorg/omnirom/omniswitch/ui/SettingsGestureView$5;
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
    .line 247
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$5;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 252
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 254
    :pswitch_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$5;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->hide()V

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
