.class Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CheckboxListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/CheckboxListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckboxListAdapter"
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
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;


# direct methods
.method public constructor <init>(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;Landroid/content/Context;ILjava/util/List;)V
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
    .line 68
    .local p4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    .line 69
    const v0, 0x7f030001

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$000(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030001

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 76
    .local v4, "rowView":Landroid/view/View;
    const v5, 0x7f08000e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 77
    .local v2, "item":Landroid/widget/TextView;
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    iget-object v6, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v6}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v6

    # invokes: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->getPositionOfItem(ILjava/util/Map;)I
    invoke-static {v5, p1, v6}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$200(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;ILjava/util/Map;)I

    move-result v3

    .line 78
    .local v3, "orderPosition":I
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListItems:[Ljava/lang/String;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$300(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 81
    .local v0, "check":Landroid/widget/CheckBox;
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    const v5, 0x7f08000d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 84
    .local v1, "image":Landroid/widget/ImageView;
    iget-object v5, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$CheckboxListAdapter;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListImages:[Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$400(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-object v4
.end method
