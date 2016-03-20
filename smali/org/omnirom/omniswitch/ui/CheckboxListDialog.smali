.class public Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
.super Landroid/app/AlertDialog;
.source "CheckboxListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;,
        Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;,
        Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;
    }
.end annotation


# instance fields
.field private mApplyRunnable:Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;

.field private mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;

.field private mCheckedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListImages:[Landroid/graphics/drawable/Drawable;

.field private mListItems:[Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field params:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;Ljava/util/Map;Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Ljava/lang/String;
    .param p3, "images"    # [Landroid/graphics/drawable/Drawable;
    .param p5, "applyRunnable"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;
    .param p6, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    .local p4, "checked":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->params:Landroid/view/ViewGroup$LayoutParams;

    .line 162
    iput-object p6, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mTitle:Ljava/lang/String;

    .line 163
    iput-object p5, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mApplyRunnable:Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;

    .line 164
    iput-object p2, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListItems:[Ljava/lang/String;

    .line 165
    iput-object p3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListImages:[Landroid/graphics/drawable/Drawable;

    .line 166
    iput-object p4, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;

    .line 167
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;ILjava/util/Map;)I
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->getPositionOfItem(ILjava/util/Map;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListItems:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)[Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListImages:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Lorg/omnirom/omniswitch/dslv/DragSortListView;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;ILjava/util/Map;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Map;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->getValueAtPosition(ILjava/util/Map;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;ILjava/util/Map;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->setValueAtPosition(ILjava/util/Map;Z)V

    return-void
.end method

.method private applyChanges()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mApplyRunnable:Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;

    invoke-interface {v0, v1}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$ApplyRunnable;->apply(Ljava/util/Map;)V

    .line 173
    return-void
.end method

.method private getPositionOfItem(ILjava/util/Map;)I
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "buttons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 92
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 93
    .local v2, "nextKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 95
    .local v1, "key":Ljava/lang/Integer;
    if-ne v0, p1, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 100
    .end local v1    # "key":Ljava/lang/Integer;
    :goto_1
    return v3

    .line 98
    .restart local v1    # "key":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 99
    goto :goto_0

    .line 100
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getValueAtPosition(ILjava/util/Map;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "buttons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 118
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 119
    .local v2, "nextKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 121
    .local v1, "key":Ljava/lang/Integer;
    if-ne v0, p1, :cond_0

    .line 122
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 126
    .end local v1    # "key":Ljava/lang/Integer;
    :goto_1
    return-object v3

    .line 124
    .restart local v1    # "key":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 125
    goto :goto_0

    .line 126
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setValueAtPosition(ILjava/util/Map;Z)V
    .locals 4
    .param p1, "position"    # I
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "buttons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 106
    .local v2, "nextKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 108
    .local v1, "key":Ljava/lang/Integer;
    if-ne v0, p1, :cond_1

    .line 109
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 112
    .restart local v1    # "key":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 113
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 177
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 178
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->applyChanges()V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->cancel()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->setView(Landroid/view/View;)V

    .line 190
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->setCancelable(Z)V

    .line 193
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 195
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 198
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 200
    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    .line 202
    new-instance v3, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1090010

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListItems:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;-><init>(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListAdapter:Landroid/widget/ArrayAdapter;

    .line 204
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    iget-object v4, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$1;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$1;-><init>(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)V

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    new-instance v1, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListDragSortController;-><init>(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)V

    .line 218
    .local v1, "dragSortController":Lorg/omnirom/omniswitch/dslv/DragSortController;
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    invoke-virtual {v3, v1}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setFloatViewManager(Lorg/omnirom/omniswitch/dslv/DragSortListView$FloatViewManager;)V

    .line 219
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;

    invoke-direct {v4, p0}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;-><init>(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)V

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setDropListener(Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;)V

    .line 272
    iget-object v3, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckboxListView:Lorg/omnirom/omniswitch/dslv/DragSortListView;

    new-instance v4, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$3;

    invoke-direct {v4, p0, v1}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$3;-><init>(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;Lorg/omnirom/omniswitch/dslv/DragSortController;)V

    invoke-virtual {v3, v4}, Lorg/omnirom/omniswitch/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    return-void
.end method
