.class Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppDrawerListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/omnirom/omniswitch/PackageManager$PackageItem;",
        ">;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/ui/SwitchLayout;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/PackageManager$PackageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/PackageManager$PackageItem;>;"
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .line 220
    const v0, 0x7f03000b

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 221
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    if-nez p2, :cond_0

    .line 227
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->getAppDrawerItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$600(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v1

    .line 231
    :goto_0
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/PackageManager;->getPackageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .line 232
    .local v2, "packageItem":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    invoke-virtual {v2}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setIntent(Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v3

    iget-boolean v3, v3, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowLabels:Z

    if-eqz v3, :cond_1

    .line 234
    invoke-virtual {v2}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :goto_1
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v5

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v6}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v6

    iget v6, v6, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconSize:I

    invoke-virtual {v3, v4, v2, v5, v6}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/PackageManager$PackageItem;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual {v1, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    invoke-virtual {v1, p0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    return-object v1

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "packageItem":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    :cond_0
    move-object v1, p2

    .line 229
    check-cast v1, Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto :goto_0

    .line 236
    .restart local v2    # "packageItem":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    :cond_1
    const-string v3, ""

    invoke-virtual {v1, v3}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSelectionGlowListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;->onItemSelected(Landroid/view/View;Z)V

    .line 252
    :goto_0
    return v2

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$AppDrawerListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mSelectionGlowListener:Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$700(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lorg/omnirom/omniswitch/ui/HorizontalListView$SelectionListener;->onItemSelected(Landroid/view/View;Z)V

    goto :goto_0
.end method
