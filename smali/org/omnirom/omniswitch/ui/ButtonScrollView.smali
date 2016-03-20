.class public Lorg/omnirom/omniswitch/ui/ButtonScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ButtonScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private resetGlow()V
    .locals 6

    .prologue
    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/ButtonScrollView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 48
    invoke-virtual {p0, v1}, Lorg/omnirom/omniswitch/ui/ButtonScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 50
    check-cast v3, Landroid/widget/LinearLayout;

    .line 51
    .local v3, "sub":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 52
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    instance-of v4, v0, Lorg/omnirom/omniswitch/ui/PackageTextView;

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 54
    check-cast v4, Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-object v5, v0

    check-cast v5, Lorg/omnirom/omniswitch/ui/PackageTextView;

    invoke-virtual {v5}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getOriginalImage()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47
    .end local v2    # "j":I
    .end local v3    # "sub":Landroid/widget/LinearLayout;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/ButtonScrollView;->resetGlow()V

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 44
    return-void
.end method
