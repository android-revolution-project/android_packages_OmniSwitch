.class Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissHorizontalListViewTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->dismiss(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$2;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$2;->val$view:Landroid/view/View;

    iput p3, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 353
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$2;->this$0:Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$2;->val$view:Landroid/view/View;

    iget v2, p0, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener$2;->val$position:I

    # invokes: Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->performDismiss(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;->access$000(Lorg/omnirom/omniswitch/ui/SwipeDismissHorizontalListViewTouchListener;Landroid/view/View;I)V

    .line 354
    return-void
.end method
