.class Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;
.super Ljava/lang/Object;
.source "CheckboxListDialog.java"

# interfaces
.implements Lorg/omnirom/omniswitch/dslv/DragSortListView$DropListener;


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
    .line 220
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 223
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 224
    .local v5, "newItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v8, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v8}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 225
    .local v6, "nextKey":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 226
    .local v1, "fromKey":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 227
    .local v2, "fromValue":Ljava/lang/Boolean;
    const/4 v3, 0x0

    .line 228
    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 229
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 230
    .local v4, "key":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v8}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 231
    .local v7, "value":Ljava/lang/Boolean;
    if-ne v3, p1, :cond_1

    .line 232
    move-object v1, v4

    .line 233
    move-object v2, v7

    .line 238
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v7    # "value":Ljava/lang/Boolean;
    :cond_0
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 239
    iget-object v8, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v8}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 240
    const/4 v3, 0x0

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "added":Z
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 243
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 244
    .restart local v4    # "key":Ljava/lang/Integer;
    iget-object v8, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v8}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 245
    .restart local v7    # "value":Ljava/lang/Boolean;
    if-ne v3, p2, :cond_4

    iget-object v8, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v8}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq p2, v8, :cond_4

    .line 246
    if-le p2, p1, :cond_2

    .line 247
    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const/4 v0, 0x1

    .line 250
    add-int/lit8 v3, v3, 0x1

    .line 251
    goto :goto_1

    .line 236
    .end local v0    # "added":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 237
    goto :goto_0

    .line 253
    .restart local v0    # "added":Z
    :cond_2
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/4 v0, 0x1

    .line 259
    :cond_3
    invoke-interface {v5, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v3, v3, 0x1

    .line 261
    goto :goto_1

    .line 255
    :cond_4
    if-ne v3, p1, :cond_3

    .line 256
    add-int/lit8 v3, v3, 0x1

    .line 257
    goto :goto_1

    .line 263
    .end local v4    # "key":Ljava/lang/Integer;
    .end local v7    # "value":Ljava/lang/Boolean;
    :cond_5
    if-nez v0, :cond_6

    .line 264
    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_6
    iget-object v8, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v8}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 267
    iget-object v8, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mCheckedItems:Ljava/util/Map;
    invoke-static {v8}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$100(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 268
    iget-object v8, p0, Lorg/omnirom/omniswitch/ui/CheckboxListDialog$2;->this$0:Lorg/omnirom/omniswitch/ui/CheckboxListDialog;

    # getter for: Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v8}, Lorg/omnirom/omniswitch/ui/CheckboxListDialog;->access$600(Lorg/omnirom/omniswitch/ui/CheckboxListDialog;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 270
    .end local v0    # "added":Z
    :cond_7
    return-void
.end method
