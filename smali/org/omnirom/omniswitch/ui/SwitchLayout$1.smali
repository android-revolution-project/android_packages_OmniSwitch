.class Lorg/omnirom/omniswitch/ui/SwitchLayout$1;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;
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
    .line 256
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "selected"    # Z

    .prologue
    .line 259
    move-object v0, p1

    check-cast v0, Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 260
    .local v0, "textView":Lorg/omnirom/omniswitch/ui/PackageTextView;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;
    invoke-static {v1, v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$802(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/view/View;)Landroid/view/View;

    .line 262
    if-eqz p2, :cond_1

    .line 263
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPendingGlowSelector:Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$900(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;

    move-result-object v1

    if-nez v1, :cond_0

    .line 264
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    new-instance v2, Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {v2, v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;-><init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V

    # setter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPendingGlowSelector:Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;
    invoke-static {v1, v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$902(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;)Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;

    .line 268
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPendingGlowSelector:Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$900(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;

    move-result-object v2

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mView:Landroid/view/View;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$1;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mPendingGlowSelector:Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$900(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 271
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getOriginalImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
