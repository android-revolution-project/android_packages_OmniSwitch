.class Lorg/omnirom/omniswitch/ui/SwitchLayout$11;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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
    .line 456
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$11;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 468
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$11;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$800(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$11;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSelectionGlowListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$11;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$800(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;->onItemSelected(Landroid/view/View;Z)V

    .line 461
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$11;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    const/4 v1, 0x0

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$802(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/view/View;)Landroid/view/View;

    .line 463
    :cond_0
    return-void
.end method
