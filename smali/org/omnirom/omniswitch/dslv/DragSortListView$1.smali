.class Lorg/omnirom/omniswitch/dslv/DragSortListView$1;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Lorg/omnirom/omniswitch/dslv/DragSortListView$DragScrollProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/dslv/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$1;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed(FJ)F
    .locals 1
    .param p1, "w"    # F
    .param p2, "t"    # J

    .prologue
    .line 261
    iget-object v0, p0, Lorg/omnirom/omniswitch/dslv/DragSortListView$1;->this$0:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    # getter for: Lorg/omnirom/omniswitch/dslv/DragSortListView;->mMaxScrollSpeed:F
    invoke-static {v0}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->access$000(Lorg/omnirom/omniswitch/dslv/DragSortListView;)F

    move-result v0

    mul-float/2addr v0, p1

    return v0
.end method
