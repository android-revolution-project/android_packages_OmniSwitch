.class Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SwitchLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .line 189
    const v0, 0x7f03000b

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 190
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    if-nez p2, :cond_0

    .line 196
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->getFavoriteItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$400(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v2

    .line 200
    :goto_0
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mFavoriteList:Ljava/util/List;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$500(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    .local v1, "intent":Ljava/lang/String;
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/omnirom/omniswitch/PackageManager;->getPackageItem(Ljava/lang/String;)Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    move-result-object v3

    .line 203
    .local v3, "packageItem":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    invoke-virtual {v3}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getIntent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setIntent(Ljava/lang/String;)V

    .line 204
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v4

    iget-boolean v4, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowLabels:Z

    if-eqz v4, :cond_1

    .line 205
    invoke-virtual {v3}, Lorg/omnirom/omniswitch/PackageManager$PackageItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_1
    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v4

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v6}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v6

    iget-object v7, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$FavoriteListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v7}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v7

    iget v7, v7, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconSize:I

    invoke-virtual {v4, v5, v3, v6, v7}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/PackageManager$PackageItem;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {v2, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    return-object v2

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "intent":Ljava/lang/String;
    .end local v3    # "packageItem":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    :cond_0
    move-object v2, p2

    .line 198
    check-cast v2, Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto :goto_0

    .line 207
    .restart local v1    # "intent":Ljava/lang/String;
    .restart local v3    # "packageItem":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    :cond_1
    const-string v4, ""

    invoke-virtual {v2, v4}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
