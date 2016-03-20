.class Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;
.super Ljava/lang/Object;
.source "FavoriteDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field check:Landroid/widget/CheckBox;

.field image:Landroid/widget/ImageView;

.field item:Landroid/widget/TextView;

.field final synthetic this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;


# direct methods
.method private constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;->this$1:Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;
    .param p2, "x1"    # Lorg/omnirom/omniswitch/ui/FavoriteDialog$1;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog$ViewHolder;-><init>(Lorg/omnirom/omniswitch/ui/FavoriteDialog$AddFavoriteDialog;)V

    return-void
.end method
