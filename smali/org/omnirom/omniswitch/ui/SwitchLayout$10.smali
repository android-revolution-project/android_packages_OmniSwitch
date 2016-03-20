.class Lorg/omnirom/omniswitch/ui/SwitchLayout$10;
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
    .line 445
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$10;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 448
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$10;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$800(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$10;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSelectionGlowListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$10;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$800(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;->onItemSelected(Landroid/view/View;Z)V

    .line 451
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$10;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    const/4 v1, 0x0

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$802(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/view/View;)Landroid/view/View;

    .line 454
    :cond_0
    return v2
.end method
