.class Lorg/omnirom/omniswitch/ui/SwitchLayout$46;
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
    .line 1611
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$46;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1613
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$46;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    const/4 v1, 0x1

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mVirtualBackKey:Z
    invoke-static {v0, v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$3802(Lorg/omnirom/omniswitch/ui/SwitchLayout;Z)Z

    .line 1614
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$46;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mRecentsManager:Lorg/omnirom/omniswitch/SwitchManager;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/SwitchManager;->close()V

    .line 1615
    return-void
.end method