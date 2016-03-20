.class Lorg/omnirom/omniswitch/ui/HorizontalListView$3;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/HorizontalListView;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$3;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$3;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->requestLayout()V

    .line 734
    return-void
.end method
