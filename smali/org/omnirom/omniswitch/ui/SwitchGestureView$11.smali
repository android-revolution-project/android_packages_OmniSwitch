.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$11;
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
    .line 1187
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$11;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$11;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    const/4 v1, 0x1

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mVirtualBackKey:Z
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$4102(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Z)Z

    .line 1191
    return-void
.end method
