.class Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SwitchLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/omnirom/omniswitch/TaskDescription;",
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
            "Lorg/omnirom/omniswitch/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Lorg/omnirom/omniswitch/TaskDescription;>;"
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    .line 158
    const v0, 0x7f03000b

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 159
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 163
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/omnirom/omniswitch/TaskDescription;

    .line 165
    .local v2, "ad":Lorg/omnirom/omniswitch/TaskDescription;
    const/4 v7, 0x0

    .line 166
    .local v7, "item":Lorg/omnirom/omniswitch/ui/PackageTextView;
    if-nez p2, :cond_0

    .line 167
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->getRecentItemTemplate()Lorg/omnirom/omniswitch/ui/PackageTextView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$100(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/ui/PackageTextView;

    move-result-object v7

    .line 171
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v7, v2, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setTask(Lorg/omnirom/omniswitch/TaskDescription;Z)V

    .line 173
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lorg/omnirom/omniswitch/SwitchConfiguration;->mShowLabels:Z

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v2}, Lorg/omnirom/omniswitch/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_1
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v2}, Lorg/omnirom/omniswitch/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v4}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v4

    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$RecentListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mConfiguration:Lorg/omnirom/omniswitch/SwitchConfiguration;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$200(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v5

    iget v5, v5, Lorg/omnirom/omniswitch/SwitchConfiguration;->mIconSize:I

    invoke-virtual/range {v0 .. v5}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/TaskDescription;Landroid/graphics/drawable/Drawable;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 179
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v6}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setOriginalImage(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {v7, v6}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 181
    return-object v7

    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object v7, p2

    .line 169
    check-cast v7, Lorg/omnirom/omniswitch/ui/PackageTextView;

    goto :goto_0

    .line 176
    :cond_1
    const-string v0, ""

    invoke-virtual {v7, v0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
