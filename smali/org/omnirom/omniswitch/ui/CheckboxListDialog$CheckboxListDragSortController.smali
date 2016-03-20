.class Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;
.super Lorg/omnirom/omniswitch/dslv/DragSortController;
.source "CheckboxListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckboxListDragSortController"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    .line 132
    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;
    invoke-static {p1}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$500(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Lorg/omnirom/omniswitch/dslv/DragSortListView;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/omnirom/omniswitch/dslv/DragSortController;-><init>(Lorg/omnirom/omniswitch/dslv/DragSortListView;III)V

    .line 135
    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;->setRemoveEnabled(Z)V

    .line 136
    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;->setSortEnabled(Z)V

    .line 137
    const v0, 0x363636

    invoke-virtual {p0, v0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;->setBackgroundColor(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 149
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$600(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;
    invoke-static {v3}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$500(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Lorg/omnirom/omniswitch/dslv/DragSortListView;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    iget-object v1, v1, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-object v0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 0
    .param p1, "floatView"    # Landroid/view/View;

    .prologue
    .line 157
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "floatView"    # Landroid/view/View;
    .param p2, "floatPoint"    # Landroid/graphics/Point;
    .param p3, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 143
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    iget-object v0, v0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$500(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Lorg/omnirom/omniswitch/dslv/DragSortListView;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setFloatAlpha(F)V

    .line 145
    return-void
.end method
