.class public Lorg/omnirom/omniswitch/ui/PackageTextView;
.super Landroid/widget/TextView;
.source "PackageTextView.java"

# interfaces
.implements Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;


# instance fields
.field private mAction:Ljava/lang/Runnable;

.field private mGlowImage:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Ljava/lang/String;

.field private mLabel:Ljava/lang/CharSequence;

.field private mOriginalImage:Landroid/graphics/drawable/Drawable;

.field private mSmallImage:Landroid/graphics/drawable/Drawable;

.field private mTask:Lorg/omnirom/omniswitch/TaskDescription;

.field private mThumbImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/omnirom/omniswitch/ui/PackageTextView;)V
    .locals 0
    .param p0, "x0"    # Lorg/omnirom/omniswitch/ui/PackageTextView;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->updateThumb()V

    return-void
.end method

.method private setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mThumbImage:Landroid/graphics/drawable/Drawable;

    .line 87
    return-void
.end method

.method private updateThumb()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v0

    invoke-virtual {v0}, Lorg/omnirom/omniswitch/TaskDescription;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 139
    .local v8, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_0

    .line 140
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/SwitchConfiguration;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/SwitchConfiguration;

    move-result-object v4

    .line 141
    .local v4, "configuration":Lorg/omnirom/omniswitch/SwitchConfiguration;
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getInstance(Landroid/content/Context;)Lorg/omnirom/omniswitch/ui/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v2

    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getTask()Lorg/omnirom/omniswitch/TaskDescription;

    move-result-object v3

    invoke-virtual {v3}, Lorg/omnirom/omniswitch/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v5, 0x3c

    invoke-virtual/range {v0 .. v5}, Lorg/omnirom/omniswitch/ui/BitmapCache;->getResized(Landroid/content/res/Resources;Lorg/omnirom/omniswitch/TaskDescription;Landroid/graphics/drawable/Drawable;Lorg/omnirom/omniswitch/SwitchConfiguration;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 142
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mThumbnailWidth:I

    iget v2, v4, Lorg/omnirom/omniswitch/SwitchConfiguration;->mThumbnailHeight:I

    invoke-static {v0, v8, v7, v1, v2}, Lorg/omnirom/omniswitch/ui/BitmapUtils;->overlay(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 145
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v6}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v9, v0, v9, v9}, Lorg/omnirom/omniswitch/ui/PackageTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    .end local v4    # "configuration":Lorg/omnirom/omniswitch/SwitchConfiguration;
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public getGlowImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mGlowImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOriginalImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mOriginalImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTask()Lorg/omnirom/omniswitch/TaskDescription;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mTask:Lorg/omnirom/omniswitch/TaskDescription;

    return-object v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mThumbImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public runAction()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 112
    :cond_0
    return-void
.end method

.method public setAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mAction:Ljava/lang/Runnable;

    .line 116
    return-void
.end method

.method public setGlowImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mGlowImage:Landroid/graphics/drawable/Drawable;

    .line 124
    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mIntent:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mLabel:Ljava/lang/CharSequence;

    .line 95
    return-void
.end method

.method public setOriginalImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 62
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mOriginalImage:Landroid/graphics/drawable/Drawable;

    .line 63
    return-void
.end method

.method public setSmallImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "smallImage"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mSmallImage:Landroid/graphics/drawable/Drawable;

    .line 106
    return-void
.end method

.method public setTask(Lorg/omnirom/omniswitch/TaskDescription;Z)V
    .locals 1
    .param p1, "task"    # Lorg/omnirom/omniswitch/TaskDescription;
    .param p2, "loadThumb"    # Z

    .prologue
    .line 74
    iput-object p1, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mTask:Lorg/omnirom/omniswitch/TaskDescription;

    .line 75
    if-eqz p2, :cond_0

    .line 76
    invoke-direct {p0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->updateThumb()V

    .line 77
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mTask:Lorg/omnirom/omniswitch/TaskDescription;

    invoke-virtual {v0, p0}, Lorg/omnirom/omniswitch/TaskDescription;->addThumbChangeListener(Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;)V

    .line 79
    :cond_0
    return-void
.end method

.method public thumbChanged()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/omnirom/omniswitch/ui/PackageTextView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/omnirom/omniswitch/ui/PackageTextView$1;

    invoke-direct {v1, p0}, Lorg/omnirom/omniswitch/ui/PackageTextView$1;-><init>(Lorg/omnirom/omniswitch/ui/PackageTextView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/omnirom/omniswitch/ui/PackageTextView;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
