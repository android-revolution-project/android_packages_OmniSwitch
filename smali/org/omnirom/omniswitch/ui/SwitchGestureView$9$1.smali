.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$9$1;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;)V
    .locals 0

    .prologue
    .line 974
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9$1;->this$1:Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9$1;->this$1:Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;

    iget-object v0, v0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9$1;->this$1:Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;

    iget-object v0, v0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$9;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setScaleY(F)V

    .line 979
    return-void
.end method
