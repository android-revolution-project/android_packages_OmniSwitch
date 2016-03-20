.class Lorg/omnirom/omniswitch/ui/SwitchLayout$12;
.super Ljava/lang/Object;
.source "SwitchLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/SwitchLayout;->createView()V
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
    .line 473
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$12;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 477
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$12;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$300(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/omnirom/omniswitch/PackageManager;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/omnirom/omniswitch/PackageManager;->getPackageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/PackageManager$PackageItem;

    .line 478
    .local v0, "packageItem":Lorg/omnirom/omniswitch/PackageManager$PackageItem;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$12;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->handleLongPressAppDrawer(Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/view/View;)V
    invoke-static {v1, v0, p2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1900(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/PackageManager$PackageItem;Landroid/view/View;)V

    .line 479
    const/4 v1, 0x1

    return v1
.end method
