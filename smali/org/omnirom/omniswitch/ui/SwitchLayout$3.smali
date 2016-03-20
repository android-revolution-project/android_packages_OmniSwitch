.class Lorg/omnirom/omniswitch/ui/SwitchLayout$3;
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
    .line 344
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

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
    .line 348
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # getter for: Lorg/omnirom/omniswitch/ui/SwitchLayout;->mLoadedTasks:Ljava/util/List;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$000(Lorg/omnirom/omniswitch/ui/SwitchLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/TaskDescription;

    .line 349
    .local v0, "task":Lorg/omnirom/omniswitch/TaskDescription;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/SwitchLayout$3;->this$0:Lorg/omnirom/omniswitch/ui/SwitchLayout;

    # invokes: Lorg/omnirom/omniswitch/ui/SwitchLayout;->handleLongPressRecent(Lorg/omnirom/omniswitch/TaskDescription;Landroid/view/View;)V
    invoke-static {v1, v0, p2}, Lorg/omnirom/omniswitch/ui/SwitchLayout;->access$1300(Lorg/omnirom/omniswitch/ui/SwitchLayout;Lorg/omnirom/omniswitch/TaskDescription;Landroid/view/View;)V

    .line 350
    const/4 v1, 0x1

    return v1
.end method
