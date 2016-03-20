.class public Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;
.super Ljava/lang/Object;
.source "ShowcaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/showcase/ShowcaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigOptions"
.end annotation


# instance fields
.field public block:Z

.field public hideOnClickOutside:Z

.field public insert:I

.field public noButton:Z

.field public shotType:I

.field public showcaseId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->block:Z

    iput-boolean v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->noButton:Z

    .line 985
    iput v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->showcaseId:I

    .line 986
    iput v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->shotType:I

    .line 987
    iput v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->insert:I

    .line 988
    iput-boolean v1, p0, Lorg/omnirom/omniswitch/showcase/ShowcaseView$ConfigOptions;->hideOnClickOutside:Z

    return-void
.end method
