.class final Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GlowSelector"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 280
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mCurrentSelection:Landroid/view/View;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$800(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/ui/PackageTextView;

    .line 282
    .local v0, "textView":Lorg/omnirom/omniswitch/ui/PackageTextView;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatStyle:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v1

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mFlatGlowColor:I

    :goto_0
    invoke-virtual {v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->glow(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$GlowSelector;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v1

    iget v1, v1, Lorg/omnirom/omniswitch/SwitchConfiguration;->mGlowColor:I

    goto :goto_0
.end method
