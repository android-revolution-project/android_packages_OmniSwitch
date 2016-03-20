.class Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;
.super Ljava/lang/Object;
.source "SwipeDismissHorizontalListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingDismissData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;ILandroid/view/View;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 368
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput p2, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->position:I

    .line 370
    iput-object p3, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    .line 371
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 364
    check-cast p1, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->compareTo(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;)I
    .locals 2
    .param p1, "other"    # Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;

    .prologue
    .line 376
    iget v0, p1, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->position:I

    iget v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method
