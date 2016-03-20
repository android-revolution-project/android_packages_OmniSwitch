.class public final Lorg/omnirom/omniswitch/TaskDescription;
.super Ljava/lang/Object;
.source "TaskDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;
    }
.end annotation


# instance fields
.field final description:Ljava/lang/CharSequence;

.field final intent:Landroid/content/Intent;

.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInitThumb:Z

.field private mKilled:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field final packageName:Ljava/lang/String;

.field final persistentTaskId:I

.field final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final taskId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mInitThumb:Z

    .line 64
    iput-object v1, p0, Lorg/omnirom/omniswitch/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 65
    iput-object v1, p0, Lorg/omnirom/omniswitch/TaskDescription;->intent:Landroid/content/Intent;

    .line 66
    iput v2, p0, Lorg/omnirom/omniswitch/TaskDescription;->taskId:I

    .line 67
    iput v2, p0, Lorg/omnirom/omniswitch/TaskDescription;->persistentTaskId:I

    .line 69
    iput-object v1, p0, Lorg/omnirom/omniswitch/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 70
    iput-object v1, p0, Lorg/omnirom/omniswitch/TaskDescription;->packageName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "_taskId"    # I
    .param p2, "_persistentTaskId"    # I
    .param p3, "_resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_packageName"    # Ljava/lang/String;
    .param p6, "_description"    # Ljava/lang/CharSequence;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mInitThumb:Z

    .line 52
    iput-object p3, p0, Lorg/omnirom/omniswitch/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 53
    iput-object p4, p0, Lorg/omnirom/omniswitch/TaskDescription;->intent:Landroid/content/Intent;

    .line 54
    iput p1, p0, Lorg/omnirom/omniswitch/TaskDescription;->taskId:I

    .line 55
    iput p2, p0, Lorg/omnirom/omniswitch/TaskDescription;->persistentTaskId:I

    .line 57
    iput-object p6, p0, Lorg/omnirom/omniswitch/TaskDescription;->description:Ljava/lang/CharSequence;

    .line 58
    iput-object p5, p0, Lorg/omnirom/omniswitch/TaskDescription;->packageName:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mListener:Ljava/util/List;

    .line 61
    return-void
.end method

.method private callListener()V
    .locals 3

    .prologue
    .line 159
    iget-object v2, p0, Lorg/omnirom/omniswitch/TaskDescription;->mListener:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 160
    .local v1, "nextListener":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;

    .line 162
    .local v0, "listener":Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;
    invoke-interface {v0}, Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;->thumbChanged()V

    goto :goto_0

    .line 164
    .end local v0    # "listener":Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addThumbChangeListener(Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;)V
    .locals 1
    .param p1, "client"    # Lorg/omnirom/omniswitch/TaskDescription$ThumbChangeListener;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistentTaskId()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->persistentTaskId:I

    return v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->taskId:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isInitThumb()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mInitThumb:Z

    return v0
.end method

.method public isKilled()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mKilled:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/omnirom/omniswitch/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 100
    return-void
.end method

.method public setInitThumb(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/TaskDescription;->mInitThumb:Z

    .line 152
    return-void
.end method

.method public setKilled()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mKilled:Z

    .line 124
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/omnirom/omniswitch/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public setLoaded(Z)V
    .locals 0
    .param p1, "loaded"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lorg/omnirom/omniswitch/TaskDescription;->mLoaded:Z

    .line 75
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 140
    iput-object p1, p0, Lorg/omnirom/omniswitch/TaskDescription;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-boolean v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mInitThumb:Z

    if-nez v0, :cond_0

    .line 142
    invoke-direct {p0}, Lorg/omnirom/omniswitch/TaskDescription;->callListener()V

    .line 144
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/omnirom/omniswitch/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
