.class Lorg/omnirom/omniswitch/ui/SettingsGestureView$8;
.super Ljava/lang/Object;
.source "SettingsGestureView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 294
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$8;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 297
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$8;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->hide()V

    .line 299
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
