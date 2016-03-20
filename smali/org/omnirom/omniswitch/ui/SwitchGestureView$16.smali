.class Lorg/omnirom/omniswitch/ui/SwitchGestureView$16;
.super Ljava/lang/Object;
.source "SwitchGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchGestureView;->hideAllLists()V
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
    .line 1347
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$16;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$16;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1350
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$16;->val$finalOldList:Landroid/widget/HorizontalScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 1351
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$16;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$4200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1352
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$16;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$4200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1353
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchGestureView$16;->this$0:Lorg/omnirom/omniswitch/ui/SwitchGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchGestureView;->mAllLists:[Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchGestureView;->access$4200(Lorg/omnirom/omniswitch/ui/SwitchGestureView;)[Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 1354
    return-void
.end method
