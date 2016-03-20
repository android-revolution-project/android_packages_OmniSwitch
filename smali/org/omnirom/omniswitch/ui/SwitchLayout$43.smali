.class Lorg/omnirom/omniswitch/ui/SwitchLayout$43;
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
    .line 1569
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$43;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1571
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$43;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->toggleAppdrawer()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$3600(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    .line 1572
    return-void
.end method
