.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$15;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView;->getActionButton(I)Lorg/omnirom/omniswitch/ui/PackageTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$15;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$15;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$3100(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    if-nez v0, :cond_0

    .line 1271
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$15;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$800(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/omnirom/omniswitch/Utils;->toggleImmersiveMode(Landroid/content/Context;)V

    .line 1273
    :cond_0
    return-void
.end method
