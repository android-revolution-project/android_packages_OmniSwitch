.class Lorg/omnirom/omniswitch/ui/FavoriteDialog$4;
.super Ljava/lang/Object;
.source "FavoriteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/FavoriteDialog;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$4;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$4;->this$0:Lorg/omnirom/omniswitch/ui/FavoriteDialog;

    # invokes: Lorg/omnirom/omniswitch/ui/FavoriteDialog;->showAddFavoriteDialog()V
    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/FavoriteDialog;->access$500(Lorg/omnirom/omniswitch/ui/FavoriteDialog;)V

    .line 189
    return-void
.end method
