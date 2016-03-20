.class Lorg/omnirom/omniswitch/ui/SwitchLayout$16;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->showDone()V
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
    .line 683
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$16;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$16;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->startShowcaseFavorite()Z
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$2200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Z

    .line 687
    return-void
.end method
