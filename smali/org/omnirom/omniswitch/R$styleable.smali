.class public final Lorg/omnirom/omniswitch/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CustomTheme:[I

.field public static final DragSortListView:[I

.field public static final HorizontalListView:[I

.field public static final ShowcaseView:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 483
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010007

    aput v2, v0, v1

    sput-object v0, Lorg/omnirom/omniswitch/R$styleable;->CustomTheme:[I

    .line 538
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/omnirom/omniswitch/R$styleable;->DragSortListView:[I

    .line 812
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/omnirom/omniswitch/R$styleable;->HorizontalListView:[I

    .line 869
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/omnirom/omniswitch/R$styleable;->ShowcaseView:[I

    return-void

    .line 538
    nop

    :array_0
    .array-data 4
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
    .end array-data

    .line 812
    :array_1
    .array-data 4
        0x10100e0
        0x1010129
        0x10103a5
        0x7f010000
    .end array-data

    .line 869
    :array_2
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
