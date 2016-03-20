.class Lorg/omnirom/omniswitch/ui/SwitchLayout$15;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$15;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 619
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$15;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 620
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 621
    .local v0, "location":[I
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$15;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 622
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$15;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavoriteY:F
    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2102(Lorg/omnirom/omniswitch/ui/SwitchLayout;F)F

    .line 623
    return-void
.end method
