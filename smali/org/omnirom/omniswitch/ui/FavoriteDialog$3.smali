.class Lorg/omnirom/omniswitch/ui/FavoriteDialog$3;
.super Ljava/lang/Object;
.source "FavoriteDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/FavoriteDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

.field final synthetic val$dragSortController:Lorg/omnirom/omniswitch/dslv/DragSortController;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;Lorg/omnirom/omniswitch/dslv/DragSortController;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$3;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$3;->val$dragSortController:Lorg/omnirom/omniswitch/dslv/DragSortController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$3;->val$dragSortController:Lorg/omnirom/omniswitch/dslv/DragSortController;

    invoke-virtual {v0, p1, p2}, Lorg/omnirom/omniswitch/dslv/DragSortController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
