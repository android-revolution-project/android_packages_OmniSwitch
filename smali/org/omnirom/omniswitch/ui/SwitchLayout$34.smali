.class Lorg/omnirom/omniswitch/ui/SwitchLayout$34;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->getActionButton(I)Lorg/omnirom/omniswitch/ui/PackageTextView;
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
    .line 1445
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$34;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1447
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$34;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$34;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAutoClose:Z
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1100(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/SwitchManager;->killAll(Z)V

    .line 1448
    return-void
.end method
