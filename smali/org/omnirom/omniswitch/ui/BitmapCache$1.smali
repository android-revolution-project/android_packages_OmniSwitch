.class Lorg/omnirom/omniswitch/ui/BitmapCache$1;
.super Landroid/util/LruCache;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/omnirom/omniswitch/ui/BitmapCache;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/omnirom/omniswitch/ui/BitmapCache;


# direct methods
.method constructor <init>(Lorg/omnirom/omniswitch/ui/BitmapCache;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 50
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/BitmapCache$1;->this$0:Lorg/omnirom/omniswitch/ui/BitmapCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/omnirom/omniswitch/ui/BitmapCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 55
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 56
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2    # "bitmap":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 58
    :goto_0
    return v0

    .restart local p2    # "bitmap":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
