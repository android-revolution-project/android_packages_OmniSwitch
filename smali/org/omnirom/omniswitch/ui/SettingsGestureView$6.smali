.class Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;
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
    .line 260
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 265
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    return v4

    .line 267
    :pswitch_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1400(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 268
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    const/4 v2, 0x0

    # setter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I
    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1402(Lorg/omnirom/omniswitch/ui/SettingsGestureView;I)I

    .line 269
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocationButton:Landroid/widget/Button;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1700(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1600(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :goto_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # invokes: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->updateLayout()V
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1800(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)V

    goto :goto_0

    .line 271
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # setter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocation:I
    invoke-static {v1, v4}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1402(Lorg/omnirom/omniswitch/ui/SettingsGestureView;I)I

    .line 272
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mLocationButton:Landroid/widget/Button;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1700(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SettingsGestureView$6;->this$0:Lorg/omnirom/omniswitch/ui/SettingsGestureView;

    # getter for: Lorg/omnirom/omniswitch/ui/SettingsGestureView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SettingsGestureView;->access$1600(Lorg/omnirom/omniswitch/ui/SettingsGestureView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
