.class Lorg/omnirom/omniswitch/ui/CheckboxListDialog$1;
.super Ljava/lang/Object;
.source "CheckboxListDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v2}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v2

    # invokes: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->getValueAtPosition(ILjava/util/Map;)Ljava/lang/Boolean;
    invoke-static {v1, p3, v2}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$700(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;ILjava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    .line 210
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 211
    iget-object v2, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    # invokes: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->setValueAtPosition(ILjava/util/Map;Z)V
    invoke-static {v2, p3, v3, v1}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$800(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;ILjava/util/Map;Z)V

    .line 212
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$1;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$600(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 214
    :cond_0
    return-void

    .line 211
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
