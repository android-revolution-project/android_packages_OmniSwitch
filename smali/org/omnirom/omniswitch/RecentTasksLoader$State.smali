.class final enum Lorg/omnirom/omniswitch/RecentTasksLoader$State;
.super Ljava/lang/Enum;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/omnirom/omniswitch/RecentTasksLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/omnirom/omniswitch/RecentTasksLoader$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/omnirom/omniswitch/RecentTasksLoader$State;

.field public static final enum IDLE:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

.field public static final enum LOADING:Lorg/omnirom/omniswitch/RecentTasksLoader$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lorg/omnirom/omniswitch/RecentTasksLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->LOADING:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    new-instance v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lorg/omnirom/omniswitch/RecentTasksLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->IDLE:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    sget-object v1, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->LOADING:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->IDLE:Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    aput-object v1, v0, v3

    sput-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->$VALUES:[Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/omnirom/omniswitch/RecentTasksLoader$State;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    return-object v0
.end method

.method public static values()[Lorg/omnirom/omniswitch/RecentTasksLoader$State;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lorg/omnirom/omniswitch/RecentTasksLoader$State;->$VALUES:[Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    invoke-virtual {v0}, [Lorg/omnirom/omniswitch/RecentTasksLoader$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/omnirom/omniswitch/RecentTasksLoader$State;

    return-object v0
.end method
