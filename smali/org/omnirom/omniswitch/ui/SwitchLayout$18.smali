.class Lorg/omnirom/omniswitch/ui/SwitchLayout$18;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->handleLongPressRecent(Lorg/omnirom/omniswitch/TaskDescription;Landroid/view/View;)V
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
    .line 879
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$18;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 881
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$18;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    const/4 v1, 0x0

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2302(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 882
    return-void
.end method
