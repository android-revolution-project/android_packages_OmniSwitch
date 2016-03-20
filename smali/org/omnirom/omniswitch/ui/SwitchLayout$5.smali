.class Lorg/omnirom/omniswitch/ui/SwitchLayout$5;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->createView()V
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
    .line 381
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$5;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$5;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$5;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mOpenFavorite:Landroid/widget/ImageButton;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$5;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mShowFavorites:Z
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->setButtonGlow(Landroid/widget/ImageButton;IZ)V
    invoke-static {v2, v3, v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1600(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/widget/ImageButton;IZ)V

    .line 389
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$5;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->toggleFavorites()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    .line 391
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 385
    goto :goto_0
.end method
