.class Lorg/omnirom/omniswitch/ui/SwitchLayout$49;
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
    .line 1654
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$49;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1656
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$49;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mRestrictedMode:Z

    if-nez v0, :cond_0

    .line 1657
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$49;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/omnirom/omniswitch/Utils;->toggleImmersiveMode(Landroid/content/Context;)V

    .line 1658
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$49;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mAutoClose:Z
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1100(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$49;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    .line 1662
    :cond_0
    return-void
.end method
