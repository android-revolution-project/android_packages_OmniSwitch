.class Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;
.super Ljava/lang/Object;
.source "SettingsGestureView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SettingsGestureView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 195
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 197
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 224
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 199
    :pswitch_0
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    # setter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDownY:F
    invoke-static {v2, v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$002(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)F

    .line 200
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDeltaY:F
    invoke-static {v2, v4}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$102(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)F

    goto :goto_0

    .line 203
    :pswitch_1
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDeltaY:F
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$100(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 204
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDeltaY:F
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$100(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)F

    move-result v3

    # += operator for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I
    invoke-static {v2, v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$316(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)I

    .line 205
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateDragHandleLayoutParams()V
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$400(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    .line 207
    :cond_1
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonEnd:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$700(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 208
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDownY:F
    invoke-static {v2, v4}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$002(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)F

    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDownY:F
    invoke-static {v2, v4}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$002(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)F

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDownY:F
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$000(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 215
    .local v1, "deltaY":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mSlop:I
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$800(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 216
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$300(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mStartY:I
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$200(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleMinHeight:I
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1100(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mEndY:I
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$300(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragHandleLimiterHeight:I
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1200(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->getLowerHandleLimit()I
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$900(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 218
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDeltaY:F
    invoke-static {v2, v1}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$102(Lorg/omnirom/omniswitch/ui/SettingsGestureView;F)F

    .line 219
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDragButtonEnd:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$700(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$3;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mDeltaY:F
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$100(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/16 :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
