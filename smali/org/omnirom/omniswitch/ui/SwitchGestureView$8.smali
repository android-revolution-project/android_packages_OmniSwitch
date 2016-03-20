.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$8;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView;->doLevelChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

.field final synthetic val$finalOldList:Landroid/widget/HorizontalScrollView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchGestureView;Landroid/widget/HorizontalScrollView;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$8;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$8;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$8;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$8;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 954
    return-void
.end method
