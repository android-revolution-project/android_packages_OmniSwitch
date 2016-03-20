.class Lorg/omnirom/omniswitch/ui/HorizontalListView$1;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/HorizontalListView;->bindGestureDetector()V
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
    .line 268
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$1;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 272
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/HorizontalListView$1;->this$0:Lorg/omnirom/omniswitch/ui/HorizontalListView;

    # getter for: Lorg/omnirom/omniswitch/ui/HorizontalListView;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/HorizontalListView;->access$100(Lorg/omnirom/omniswitch/ui/HorizontalListView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
