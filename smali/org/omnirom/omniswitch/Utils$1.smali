.class final Lorg/omnirom/omniswitch/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/Utils;->triggerVirtualKeypress(Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downEvent:Landroid/view/KeyEvent;

.field final synthetic val$im:Landroid/hardware/input/InputManager;


# direct methods
.method constructor <init>(Landroid/hardware/input/InputManager;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lorg/omnirom/omniswitch/Utils$1;->val$im:Landroid/hardware/input/InputManager;

    iput-object p2, p0, Lorg/omnirom/omniswitch/Utils$1;->val$downEvent:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lorg/omnirom/omniswitch/Utils$1;->val$im:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lorg/omnirom/omniswitch/Utils$1;->val$downEvent:Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 138
    return-void
.end method
